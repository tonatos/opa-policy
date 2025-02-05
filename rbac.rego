package authz
 
import rego.v1
 
default allow := false
 
allow if {
    valid_permission
}

# {
#	"users": {
#		"bilbo": {
#			"roles": ["admin"]
#		}
#	}
# }
valid_permission if {
    #data.users[input.user].roles[i] == "admin"
    input.user == "admin"
}

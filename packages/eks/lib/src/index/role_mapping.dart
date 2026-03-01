// ignore_for_file: unused_element, unnecessary_cast


/// Describes a mapping from an AWS IAM role to a Kubernetes user and groups.
class RoleMapping {
  /// A list of groups within Kubernetes to which the role is mapped.
  final List<String> groups;
  /// The ARN of the IAM role to add.
  final String roleArn;
  /// The user name within Kubernetes to map to the IAM role. By default, the user name is the ARN of the IAM role.
  final String username;

  /// Creates a new [RoleMapping].
  /// [groups] A list of groups within Kubernetes to which the role is mapped.
  /// [roleArn] The ARN of the IAM role to add.
  /// [username] The user name within Kubernetes to map to the IAM role. By default, the user name is the ARN of the IAM role.
  RoleMapping({
    required this.groups,
    required this.roleArn,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': groups,
      'roleArn': roleArn,
      'username': username,
    };
  }

  factory RoleMapping.fromMap(Map<String, dynamic> map) {
    return RoleMapping(
      groups: (map['groups'] as List).cast<String>(),
      roleArn: map['roleArn'] as String,
      username: map['username'] as String,
    );
  }
}


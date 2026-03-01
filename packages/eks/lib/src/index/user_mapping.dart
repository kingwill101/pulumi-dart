// ignore_for_file: unused_element, unnecessary_cast


/// Describes a mapping from an AWS IAM user to a Kubernetes user and groups.
class UserMapping {
  /// A list of groups within Kubernetes to which the user is mapped to.
  final List<String> groups;
  /// The ARN of the IAM user to add.
  final String userArn;
  /// The user name within Kubernetes to map to the IAM user. By default, the user name is the ARN of the IAM user.
  final String username;

  /// Creates a new [UserMapping].
  /// [groups] A list of groups within Kubernetes to which the user is mapped to.
  /// [userArn] The ARN of the IAM user to add.
  /// [username] The user name within Kubernetes to map to the IAM user. By default, the user name is the ARN of the IAM user.
  UserMapping({
    required this.groups,
    required this.userArn,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': groups,
      'userArn': userArn,
      'username': username,
    };
  }

  factory UserMapping.fromMap(Map<String, dynamic> map) {
    return UserMapping(
      groups: (map['groups'] as List).cast<String>(),
      userArn: map['userArn'] as String,
      username: map['username'] as String,
    );
  }
}


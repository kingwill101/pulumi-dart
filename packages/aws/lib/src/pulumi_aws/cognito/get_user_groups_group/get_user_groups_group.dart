// ignore_for_file: unused_element, unnecessary_cast

class GetUserGroupsGroup {
  /// Description of the user group.
  final String description;

  /// Name of the user group.
  final String groupName;

  /// Precedence of the user group.
  final int precedence;

  /// ARN of the IAM role to be associated with the user group.
  final String roleArn;

  GetUserGroupsGroup({
    required this.description,
    required this.groupName,
    required this.precedence,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['groupName'] = groupName;
    map['precedence'] = precedence;
    map['roleArn'] = roleArn;
    return map;
  }

  factory GetUserGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetUserGroupsGroup(
      description: map['description'] as String,
      groupName: map['groupName'] as String,
      precedence: map['precedence'] as int,
      roleArn: map['roleArn'] as String,
    );
  }
}

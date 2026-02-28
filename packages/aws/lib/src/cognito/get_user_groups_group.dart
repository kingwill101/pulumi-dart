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

  /// Creates a new [GetUserGroupsGroup].
  /// [description] Description of the user group.
  /// [groupName] Name of the user group.
  /// [precedence] Precedence of the user group.
  /// [roleArn] ARN of the IAM role to be associated with the user group.
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

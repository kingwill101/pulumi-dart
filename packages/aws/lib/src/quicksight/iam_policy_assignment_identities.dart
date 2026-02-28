// ignore_for_file: unused_element, unnecessary_cast

class IamPolicyAssignmentIdentities {
  /// Array of Quicksight group names to assign the policy to.
  final List<String>? groups;

  /// Array of Quicksight user names to assign the policy to.
  final List<String>? users;

  /// Creates a new [IamPolicyAssignmentIdentities].
  /// [groups] Array of Quicksight group names to assign the policy to.
  /// [users] Array of Quicksight user names to assign the policy to.
  IamPolicyAssignmentIdentities({
    this.groups,
    this.users,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final groupsValue = groups;
    if (groupsValue != null) {
      map['groups'] = groupsValue;
    }
    final usersValue = users;
    if (usersValue != null) {
      map['users'] = usersValue;
    }
    return map;
  }

  factory IamPolicyAssignmentIdentities.fromMap(Map<String, dynamic> map) {
    return IamPolicyAssignmentIdentities(
      groups:
          map['groups'] == null ? null : (map['groups'] as List).cast<String>(),
      users:
          map['users'] == null ? null : (map['users'] as List).cast<String>(),
    );
  }
}

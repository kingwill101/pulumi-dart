// ignore_for_file: unused_element, unnecessary_cast

class BudgetActionDefinitionIamActionDefinition {
  /// A list of groups to be attached. There must be at least one group.
  final List<String>? groups;

  /// The Amazon Resource Name (ARN) of the policy to be attached.
  final String policyArn;

  /// A list of roles to be attached. There must be at least one role.
  final List<String>? roles;

  /// A list of users to be attached. There must be at least one user.
  final List<String>? users;

  /// Creates a new [BudgetActionDefinitionIamActionDefinition].
  /// [groups] A list of groups to be attached. There must be at least one group.
  /// [policyArn] The Amazon Resource Name (ARN) of the policy to be attached.
  /// [roles] A list of roles to be attached. There must be at least one role.
  /// [users] A list of users to be attached. There must be at least one user.
  BudgetActionDefinitionIamActionDefinition({
    this.groups,
    required this.policyArn,
    this.roles,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': ?groups,
      'policyArn': policyArn,
      'roles': ?roles,
      'users': ?users,
    };
  }

  factory BudgetActionDefinitionIamActionDefinition.fromMap(
    Map<String, dynamic> map,
  ) {
    return BudgetActionDefinitionIamActionDefinition(
      groups: map['groups'] == null
          ? null
          : (map['groups'] as List).cast<String>(),
      policyArn: map['policyArn'] as String,
      roles: map['roles'] == null
          ? null
          : (map['roles'] as List).cast<String>(),
      users: map['users'] == null
          ? null
          : (map['users'] as List).cast<String>(),
    );
  }
}

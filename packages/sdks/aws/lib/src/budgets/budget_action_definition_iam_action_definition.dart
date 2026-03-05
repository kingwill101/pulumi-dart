// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetActionDefinitionIamActionDefinition {
  /// A list of groups to be attached. There must be at least one group.
  final pulumi.Input<List<String>>? groups;
  /// The Amazon Resource Name (ARN) of the policy to be attached.
  final pulumi.Input<String> policyArn;
  /// A list of roles to be attached. There must be at least one role.
  final pulumi.Input<List<String>>? roles;
  /// A list of users to be attached. There must be at least one user.
  final pulumi.Input<List<String>>? users;

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

  factory BudgetActionDefinitionIamActionDefinition.fromMap(Map<String, dynamic> map) {
    return BudgetActionDefinitionIamActionDefinition(
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      policyArn: pulumi.Input.fromValue(map['policyArn'] as String),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}


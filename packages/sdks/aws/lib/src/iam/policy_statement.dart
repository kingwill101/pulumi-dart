// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_statement_effect.dart';

/// The Statement element is the main element for a policy. This element is required. It can include multiple elements (see the subsequent sections in this page). The Statement element contains an array of individual statements.
class PolicyStatement {
  /// Include a list of actions that the policy allows or denies. Required (either Action or NotAction)
  final pulumi.Input<String>? action;
  /// Specify the circumstances under which the policy grants permission.
  final pulumi.Input<Map<String, dynamic>>? condition;
  /// Indicate whether the policy allows or denies access.
  final pulumi.Input<PolicyStatementEffect> effect;
  /// Include a list of actions that are not covered by this policy. Required (either Action or NotAction)
  final pulumi.Input<String>? notAction;
  /// Indicate the account, user, role, or federated user to which this policy does not apply.
  final pulumi.Input<String>? notPrincipal;
  /// A list of resources that are specifically excluded by this policy.
  final pulumi.Input<String>? notResource;
  /// Indicate the account, user, role, or federated user to which you would like to allow or deny access. If you are creating a policy to attach to a user or role, you cannot include this element. The principal is implied as that user or role.
  final pulumi.Input<String>? principal;
  /// A list of resources to which the actions apply.
  final pulumi.Input<String>? resource;
  /// An optional statement ID to differentiate between your statements.
  final pulumi.Input<String>? sid;

  /// Creates a new [PolicyStatement].
  /// [action] Include a list of actions that the policy allows or denies. Required (either Action or NotAction)
  /// [condition] Specify the circumstances under which the policy grants permission.
  /// [effect] Indicate whether the policy allows or denies access.
  /// [notAction] Include a list of actions that are not covered by this policy. Required (either Action or NotAction)
  /// [notPrincipal] Indicate the account, user, role, or federated user to which this policy does not apply.
  /// [notResource] A list of resources that are specifically excluded by this policy.
  /// [principal] Indicate the account, user, role, or federated user to which you would like to allow or deny access. If you are creating a policy to attach to a user or role, you cannot include this element. The principal is implied as that user or role.
  /// [resource] A list of resources to which the actions apply.
  /// [sid] An optional statement ID to differentiate between your statements.
  PolicyStatement({
    this.action,
    this.condition,
    required this.effect,
    this.notAction,
    this.notPrincipal,
    this.notResource,
    this.principal,
    this.resource,
    this.sid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Action': ?action,
      'Condition': ?condition,
      'Effect': pulumi.Input.mapInputValue<PolicyStatementEffect, String>(effect, (value) => value.value),
      'NotAction': ?notAction,
      'NotPrincipal': ?notPrincipal,
      'NotResource': ?notResource,
      'Principal': ?principal,
      'Resource': ?resource,
      'Sid': ?sid,
    };
  }

  factory PolicyStatement.fromMap(Map<String, dynamic> map) {
    return PolicyStatement(
      action: map['Action'] == null ? null : (map['Action'] as String).input(),
      condition: map['Condition'] == null ? null : ((map['Condition'] as Map).cast<String, dynamic>()).input(),
      effect: (PolicyStatementEffect.fromValue(map['Effect'] as String)).input(),
      notAction: map['NotAction'] == null ? null : (map['NotAction'] as String).input(),
      notPrincipal: map['NotPrincipal'] == null ? null : (map['NotPrincipal'] as String).input(),
      notResource: map['NotResource'] == null ? null : (map['NotResource'] as String).input(),
      principal: map['Principal'] == null ? null : (map['Principal'] as String).input(),
      resource: map['Resource'] == null ? null : (map['Resource'] as String).input(),
      sid: map['Sid'] == null ? null : (map['Sid'] as String).input(),
    );
  }
}


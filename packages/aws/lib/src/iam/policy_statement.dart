// ignore_for_file: unused_element, unnecessary_cast

import 'policy_statement_effect.dart';

/// The Statement element is the main element for a policy. This element is required. It can include multiple elements (see the subsequent sections in this page). The Statement element contains an array of individual statements.
class PolicyStatement {
  /// Include a list of actions that the policy allows or denies. Required (either Action or NotAction)
  final String? action;

  /// Specify the circumstances under which the policy grants permission.
  final Map<String, dynamic>? condition;

  /// Indicate whether the policy allows or denies access.
  final PolicyStatementEffect effect;

  /// Include a list of actions that are not covered by this policy. Required (either Action or NotAction)
  final String? notAction;

  /// Indicate the account, user, role, or federated user to which this policy does not apply.
  final String? notPrincipal;

  /// A list of resources that are specifically excluded by this policy.
  final String? notResource;

  /// Indicate the account, user, role, or federated user to which you would like to allow or deny access. If you are creating a policy to attach to a user or role, you cannot include this element. The principal is implied as that user or role.
  final String? principal;

  /// A list of resources to which the actions apply.
  final String? resource;

  /// An optional statement ID to differentiate between your statements.
  final String? sid;

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
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['Action'] = actionValue;
    }
    final conditionValue = condition;
    if (conditionValue != null) {
      map['Condition'] = conditionValue;
    }
    map['Effect'] = effect.value;
    final notActionValue = notAction;
    if (notActionValue != null) {
      map['NotAction'] = notActionValue;
    }
    final notPrincipalValue = notPrincipal;
    if (notPrincipalValue != null) {
      map['NotPrincipal'] = notPrincipalValue;
    }
    final notResourceValue = notResource;
    if (notResourceValue != null) {
      map['NotResource'] = notResourceValue;
    }
    final principalValue = principal;
    if (principalValue != null) {
      map['Principal'] = principalValue;
    }
    final resourceValue = resource;
    if (resourceValue != null) {
      map['Resource'] = resourceValue;
    }
    final sidValue = sid;
    if (sidValue != null) {
      map['Sid'] = sidValue;
    }
    return map;
  }

  factory PolicyStatement.fromMap(Map<String, dynamic> map) {
    return PolicyStatement(
      action: map['Action'] == null ? null : map['Action'] as String,
      condition: map['Condition'] == null
          ? null
          : (map['Condition'] as Map).cast<String, dynamic>(),
      effect: PolicyStatementEffect.fromValue(map['Effect'] as String),
      notAction: map['NotAction'] == null ? null : map['NotAction'] as String,
      notPrincipal:
          map['NotPrincipal'] == null ? null : map['NotPrincipal'] as String,
      notResource:
          map['NotResource'] == null ? null : map['NotResource'] as String,
      principal: map['Principal'] == null ? null : map['Principal'] as String,
      resource: map['Resource'] == null ? null : map['Resource'] as String,
      sid: map['Sid'] == null ? null : map['Sid'] as String,
    );
  }
}

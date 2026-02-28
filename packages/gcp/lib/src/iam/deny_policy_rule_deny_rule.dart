// ignore_for_file: unused_element, unnecessary_cast

import 'deny_policy_rule_deny_rule_denial_condition.dart';

class DenyPolicyRuleDenyRule {
  /// User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header.
  /// Structure is documented below.
  final DenyPolicyRuleDenyRuleDenialCondition? denialCondition;
  /// The permissions that are explicitly denied by this rule. Each permission uses the format `{service-fqdn}/{resource}.{verb}`,
  /// where `{service-fqdn}` is the fully qualified domain name for the service. For example, `iam.googleapis.com/roles.list`.
  final List<String>? deniedPermissions;
  /// The identities that are prevented from using one or more permissions on Google Cloud resources.
  final List<String>? deniedPrincipals;
  /// Specifies the permissions that this rule excludes from the set of denied permissions given by deniedPermissions.
  /// If a permission appears in deniedPermissions and in exceptionPermissions then it will not be denied.
  /// The excluded permissions can be specified using the same syntax as deniedPermissions.
  final List<String>? exceptionPermissions;
  /// The identities that are excluded from the deny rule, even if they are listed in the deniedPrincipals.
  /// For example, you could add a Google group to the deniedPrincipals, then exclude specific users who belong to that group.
  final List<String>? exceptionPrincipals;

  /// Creates a new [DenyPolicyRuleDenyRule].
  /// [denialCondition] User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header.
  /// [deniedPermissions] The permissions that are explicitly denied by this rule. Each permission uses the format `{service-fqdn}/{resource}.{verb}`,
  /// [deniedPrincipals] The identities that are prevented from using one or more permissions on Google Cloud resources.
  /// [exceptionPermissions] Specifies the permissions that this rule excludes from the set of denied permissions given by deniedPermissions.
  /// [exceptionPrincipals] The identities that are excluded from the deny rule, even if they are listed in the deniedPrincipals.
  DenyPolicyRuleDenyRule({
    this.denialCondition,
    this.deniedPermissions,
    this.deniedPrincipals,
    this.exceptionPermissions,
    this.exceptionPrincipals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'denialCondition': ?denialCondition == null ? null : denialCondition!.toMap(),
      'deniedPermissions': ?deniedPermissions,
      'deniedPrincipals': ?deniedPrincipals,
      'exceptionPermissions': ?exceptionPermissions,
      'exceptionPrincipals': ?exceptionPrincipals,
    };
  }

  factory DenyPolicyRuleDenyRule.fromMap(Map<String, dynamic> map) {
    return DenyPolicyRuleDenyRule(
      denialCondition: map['denialCondition'] == null ? null : DenyPolicyRuleDenyRuleDenialCondition.fromMap((map['denialCondition'] as Map).cast<String, dynamic>()),
      deniedPermissions: map['deniedPermissions'] == null ? null : (map['deniedPermissions'] as List).cast<String>(),
      deniedPrincipals: map['deniedPrincipals'] == null ? null : (map['deniedPrincipals'] as List).cast<String>(),
      exceptionPermissions: map['exceptionPermissions'] == null ? null : (map['exceptionPermissions'] as List).cast<String>(),
      exceptionPrincipals: map['exceptionPrincipals'] == null ? null : (map['exceptionPrincipals'] as List).cast<String>(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'posture_policy_set_policy_constraint_org_policy_constraint.dart';
import 'posture_policy_set_policy_constraint_org_policy_constraint_custom.dart';
import 'posture_policy_set_policy_constraint_security_health_analytics_custom_module.dart';
import 'posture_policy_set_policy_constraint_security_health_analytics_module.dart';

class PosturePolicySetPolicyConstraint {
  /// Organization policy canned constraint definition.
  /// Structure is documented below.
  final PosturePolicySetPolicyConstraintOrgPolicyConstraint? orgPolicyConstraint;
  /// Organization policy custom constraint policy definition.
  /// Structure is documented below.
  final PosturePolicySetPolicyConstraintOrgPolicyConstraintCustom? orgPolicyConstraintCustom;
  /// Definition of Security Health Analytics Custom Module.
  /// Structure is documented below.
  final PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModule? securityHealthAnalyticsCustomModule;
  /// Security Health Analytics built-in detector definition.
  /// Structure is documented below.
  final PosturePolicySetPolicyConstraintSecurityHealthAnalyticsModule? securityHealthAnalyticsModule;

  /// Creates a new [PosturePolicySetPolicyConstraint].
  /// [orgPolicyConstraint] Organization policy canned constraint definition.
  /// [orgPolicyConstraintCustom] Organization policy custom constraint policy definition.
  /// [securityHealthAnalyticsCustomModule] Definition of Security Health Analytics Custom Module.
  /// [securityHealthAnalyticsModule] Security Health Analytics built-in detector definition.
  PosturePolicySetPolicyConstraint({
    this.orgPolicyConstraint,
    this.orgPolicyConstraintCustom,
    this.securityHealthAnalyticsCustomModule,
    this.securityHealthAnalyticsModule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orgPolicyConstraint': ?orgPolicyConstraint == null ? null : orgPolicyConstraint!.toMap(),
      'orgPolicyConstraintCustom': ?orgPolicyConstraintCustom == null ? null : orgPolicyConstraintCustom!.toMap(),
      'securityHealthAnalyticsCustomModule': ?securityHealthAnalyticsCustomModule == null ? null : securityHealthAnalyticsCustomModule!.toMap(),
      'securityHealthAnalyticsModule': ?securityHealthAnalyticsModule == null ? null : securityHealthAnalyticsModule!.toMap(),
    };
  }

  factory PosturePolicySetPolicyConstraint.fromMap(Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraint(
      orgPolicyConstraint: map['orgPolicyConstraint'] == null ? null : PosturePolicySetPolicyConstraintOrgPolicyConstraint.fromMap((map['orgPolicyConstraint'] as Map).cast<String, dynamic>()),
      orgPolicyConstraintCustom: map['orgPolicyConstraintCustom'] == null ? null : PosturePolicySetPolicyConstraintOrgPolicyConstraintCustom.fromMap((map['orgPolicyConstraintCustom'] as Map).cast<String, dynamic>()),
      securityHealthAnalyticsCustomModule: map['securityHealthAnalyticsCustomModule'] == null ? null : PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModule.fromMap((map['securityHealthAnalyticsCustomModule'] as Map).cast<String, dynamic>()),
      securityHealthAnalyticsModule: map['securityHealthAnalyticsModule'] == null ? null : PosturePolicySetPolicyConstraintSecurityHealthAnalyticsModule.fromMap((map['securityHealthAnalyticsModule'] as Map).cast<String, dynamic>()),
    );
  }
}


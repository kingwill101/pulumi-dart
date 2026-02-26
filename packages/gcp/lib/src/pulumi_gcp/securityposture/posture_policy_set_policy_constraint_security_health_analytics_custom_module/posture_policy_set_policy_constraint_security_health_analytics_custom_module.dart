// ignore_for_file: unused_element, unnecessary_cast

import '../posture_policy_set_policy_constraint_security_health_analytics_custom_module_config/posture_policy_set_policy_constraint_security_health_analytics_custom_module_config.dart';

class PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModule {
  /// Custom module details.
  /// Structure is documented below.
  final PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfig
      config;

  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module.
  final String? displayName;

  /// (Output)
  /// A server generated id of custom module.
  final String? id;

  /// The state of enablement for the module at its level of the resource hierarchy.
  /// Possible values are: `ENABLEMENT_STATE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final String? moduleEnablementState;

  PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModule({
    required this.config,
    this.displayName,
    this.id,
    this.moduleEnablementState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config.toMap();
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final moduleEnablementStateValue = moduleEnablementState;
    if (moduleEnablementStateValue != null) {
      map['moduleEnablementState'] = moduleEnablementStateValue;
    }
    return map;
  }

  factory PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModule.fromMap(
      Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModule(
      config:
          PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfig
              .fromMap((map['config'] as Map).cast<String, dynamic>()),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      moduleEnablementState: map['moduleEnablementState'] == null
          ? null
          : map['moduleEnablementState'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../posture_policy_set_policy_constraint_security_health_analytics_custom_module_config_custom_output_property/posture_policy_set_policy_constraint_security_health_analytics_custom_module_config_custom_output_property.dart';

class PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutput {
  /// A list of custom output properties to add to the finding.
  /// Structure is documented below.
  final List<
          PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperty>?
      properties;

  PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutput({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = Input.encodeList<
          PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperty,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutput.fromMap(
      Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutput(
      properties: map['properties'] == null
          ? null
          : Input.decodeList<
                  PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperty>(
              map['properties'],
              (value) =>
                  PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperty
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

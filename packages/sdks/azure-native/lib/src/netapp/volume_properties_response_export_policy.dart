// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_policy_rule_capacity_pool_volume_response.dart';

/// Set of export policy rules
class VolumePropertiesResponseExportPolicy {
  /// Export policy rule
  final pulumi.Input<List<ExportPolicyRuleCapacityPoolVolumeResponse>?>? rules;

  /// Creates a new [VolumePropertiesResponseExportPolicy].
  /// [rules] Export policy rule
  const VolumePropertiesResponseExportPolicy({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ExportPolicyRuleCapacityPoolVolumeResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ExportPolicyRuleCapacityPoolVolumeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VolumePropertiesResponseExportPolicy.fromMap(Map<String, dynamic> map) {
    return VolumePropertiesResponseExportPolicy(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExportPolicyRuleCapacityPoolVolumeResponse>(guardedValue, (value) => ExportPolicyRuleCapacityPoolVolumeResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

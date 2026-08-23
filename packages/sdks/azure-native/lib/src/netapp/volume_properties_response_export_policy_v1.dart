// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_policy_rule_volume_group_response.dart';

/// Set of export policy rules
class VolumePropertiesResponseExportPolicyV1 {
  /// Export policy rule
  final pulumi.Input<List<ExportPolicyRuleVolumeGroupResponse>>? rules;

  /// Creates a new [VolumePropertiesResponseExportPolicyV1].
  /// [rules] Export policy rule
  const VolumePropertiesResponseExportPolicyV1({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ExportPolicyRuleVolumeGroupResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ExportPolicyRuleVolumeGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VolumePropertiesResponseExportPolicyV1.fromMap(Map<String, dynamic> map) {
    return VolumePropertiesResponseExportPolicyV1(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExportPolicyRuleVolumeGroupResponse>(guardedValue, (value) => ExportPolicyRuleVolumeGroupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_policy_rule.dart';

/// Set of export policy rules
class VolumePropertiesExportPolicy {
  /// Export policy rule
  final pulumi.Input<List<ExportPolicyRule>>? rules;

  /// Creates a new [VolumePropertiesExportPolicy].
  /// [rules] Export policy rule
  const VolumePropertiesExportPolicy({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ExportPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ExportPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VolumePropertiesExportPolicy.fromMap(Map<String, dynamic> map) {
    return VolumePropertiesExportPolicy(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExportPolicyRule>(guardedValue, (value) => ExportPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


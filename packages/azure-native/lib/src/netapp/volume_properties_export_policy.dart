// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_policy_rule.dart';

/// Set of export policy rules
class VolumePropertiesExportPolicy {
  /// Export policy rule
  final List<ExportPolicyRule>? rules;

  /// Creates a new [VolumePropertiesExportPolicy].
  /// [rules] Export policy rule
  VolumePropertiesExportPolicy({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ExportPolicyRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory VolumePropertiesExportPolicy.fromMap(Map<String, dynamic> map) {
    return VolumePropertiesExportPolicy(
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ExportPolicyRule>(map['rules'], (value) => ExportPolicyRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


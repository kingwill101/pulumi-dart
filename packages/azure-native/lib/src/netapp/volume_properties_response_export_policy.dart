// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_policy_rule_response.dart';

/// Set of export policy rules
class VolumePropertiesResponseExportPolicy {
  /// Export policy rule
  final List<ExportPolicyRuleResponse>? rules;

  /// Creates a new [VolumePropertiesResponseExportPolicy].
  /// [rules] Export policy rule
  VolumePropertiesResponseExportPolicy({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ExportPolicyRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory VolumePropertiesResponseExportPolicy.fromMap(Map<String, dynamic> map) {
    return VolumePropertiesResponseExportPolicy(
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ExportPolicyRuleResponse>(map['rules'], (value) => ExportPolicyRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


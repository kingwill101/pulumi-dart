// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_remediation_remediation_args_doc}
/// The set of arguments for Remediation.
/// {@endtemplate}
/// {@macro pulumi_cfg_remediation_remediation_args_doc}
class RemediationArgs {
  /// Rule ID.
  final pulumi.Input<String> configRuleId;
  /// Execution type, valid values: `Manual`, `Automatic`.
  final pulumi.Input<String> invokeType;
  /// Remediation parameter.
  final pulumi.Input<String> params;
  /// Remediation resource type, valid values: `ALIYUN` , `CUSTOMER`.
  final pulumi.Input<String>? remediationSourceType;
  /// Remediation template ID.
  final pulumi.Input<String> remediationTemplateId;
  /// Remediation type, valid values: `OOS`, `FC`.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String> remediationType;

  /// Creates a new [RemediationArgs].
  /// [configRuleId] Rule ID.
  /// [invokeType] Execution type, valid values: `Manual`, `Automatic`.
  /// [params] Remediation parameter.
  /// [remediationSourceType] Remediation resource type, valid values: `ALIYUN` , `CUSTOMER`.
  /// [remediationTemplateId] Remediation template ID.
  /// [remediationType] Remediation type, valid values: `OOS`, `FC`.
  RemediationArgs({
    required this.configRuleId,
    required this.invokeType,
    required this.params,
    this.remediationSourceType,
    required this.remediationTemplateId,
    required this.remediationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configRuleId': configRuleId,
      'invokeType': invokeType,
      'params': params,
      'remediationSourceType': ?remediationSourceType,
      'remediationTemplateId': remediationTemplateId,
      'remediationType': remediationType,
    };
  }

  factory RemediationArgs.fromMap(Map<String, dynamic> map) {
    return RemediationArgs(
      configRuleId: (map['configRuleId'] as String).input(),
      invokeType: (map['invokeType'] as String).input(),
      params: (map['params'] as String).input(),
      remediationSourceType: map['remediationSourceType'] == null ? null : (map['remediationSourceType']! as String).input(),
      remediationTemplateId: (map['remediationTemplateId'] as String).input(),
      remediationType: (map['remediationType'] as String).input(),
    );
  }
}


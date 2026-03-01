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
    required pulumi.Output<String> configRuleId,
    required pulumi.Output<String> invokeType,
    required pulumi.Output<String> params,
    pulumi.Output<String>? remediationSourceType,
    required pulumi.Output<String> remediationTemplateId,
    required pulumi.Output<String> remediationType,
  }) :
      configRuleId = pulumi.Input.asInput<String>(configRuleId),
      invokeType = pulumi.Input.asInput<String>(invokeType),
      params = pulumi.Input.asInput<String>(params),
      remediationSourceType = pulumi.Input.asOptionalInput<String>(remediationSourceType),
      remediationTemplateId = pulumi.Input.asInput<String>(remediationTemplateId),
      remediationType = pulumi.Input.asInput<String>(remediationType);

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
      configRuleId: pulumi.Output.create<String>(map['configRuleId'] as String),
      invokeType: pulumi.Output.create<String>(map['invokeType'] as String),
      params: pulumi.Output.create<String>(map['params'] as String),
      remediationSourceType: map['remediationSourceType'] == null ? null : pulumi.Output.create<String>(map['remediationSourceType'] as String),
      remediationTemplateId: pulumi.Output.create<String>(map['remediationTemplateId'] as String),
      remediationType: pulumi.Output.create<String>(map['remediationType'] as String),
    );
  }
}


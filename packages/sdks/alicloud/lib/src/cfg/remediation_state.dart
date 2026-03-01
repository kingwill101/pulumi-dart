// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Remediation resources.
class RemediationState {
  /// Rule ID.
  final pulumi.Input<String>? configRuleId;
  /// Execution type, valid values: `Manual`, `Automatic`.
  final pulumi.Input<String>? invokeType;
  /// Remediation parameter.
  final pulumi.Input<String>? params;
  /// Remediation ID.
  final pulumi.Input<String>? remediationId;
  /// Remediation resource type, valid values: `ALIYUN` , `CUSTOMER`.
  final pulumi.Input<String>? remediationSourceType;
  /// Remediation template ID.
  final pulumi.Input<String>? remediationTemplateId;
  /// Remediation type, valid values: `OOS`, `FC`.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? remediationType;

  /// Creates a new [RemediationState].
  /// [configRuleId] Rule ID.
  /// [invokeType] Execution type, valid values: `Manual`, `Automatic`.
  /// [params] Remediation parameter.
  /// [remediationId] Remediation ID.
  /// [remediationSourceType] Remediation resource type, valid values: `ALIYUN` , `CUSTOMER`.
  /// [remediationTemplateId] Remediation template ID.
  /// [remediationType] Remediation type, valid values: `OOS`, `FC`.
  RemediationState({
    pulumi.Output<String>? configRuleId,
    pulumi.Output<String>? invokeType,
    pulumi.Output<String>? params,
    pulumi.Output<String>? remediationId,
    pulumi.Output<String>? remediationSourceType,
    pulumi.Output<String>? remediationTemplateId,
    pulumi.Output<String>? remediationType,
  }) :
      configRuleId = pulumi.Input.asOptionalInput<String>(configRuleId),
      invokeType = pulumi.Input.asOptionalInput<String>(invokeType),
      params = pulumi.Input.asOptionalInput<String>(params),
      remediationId = pulumi.Input.asOptionalInput<String>(remediationId),
      remediationSourceType = pulumi.Input.asOptionalInput<String>(remediationSourceType),
      remediationTemplateId = pulumi.Input.asOptionalInput<String>(remediationTemplateId),
      remediationType = pulumi.Input.asOptionalInput<String>(remediationType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configRuleId': ?configRuleId,
      'invokeType': ?invokeType,
      'params': ?params,
      'remediationId': ?remediationId,
      'remediationSourceType': ?remediationSourceType,
      'remediationTemplateId': ?remediationTemplateId,
      'remediationType': ?remediationType,
    };
  }

  factory RemediationState.fromMap(Map<String, dynamic> map) {
    return RemediationState(
      configRuleId: map['configRuleId'] == null ? null : pulumi.Output.create<String>(map['configRuleId'] as String),
      invokeType: map['invokeType'] == null ? null : pulumi.Output.create<String>(map['invokeType'] as String),
      params: map['params'] == null ? null : pulumi.Output.create<String>(map['params'] as String),
      remediationId: map['remediationId'] == null ? null : pulumi.Output.create<String>(map['remediationId'] as String),
      remediationSourceType: map['remediationSourceType'] == null ? null : pulumi.Output.create<String>(map['remediationSourceType'] as String),
      remediationTemplateId: map['remediationTemplateId'] == null ? null : pulumi.Output.create<String>(map['remediationTemplateId'] as String),
      remediationType: map['remediationType'] == null ? null : pulumi.Output.create<String>(map['remediationType'] as String),
    );
  }
}


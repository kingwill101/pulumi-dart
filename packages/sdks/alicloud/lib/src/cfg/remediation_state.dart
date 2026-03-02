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
    this.configRuleId,
    this.invokeType,
    this.params,
    this.remediationId,
    this.remediationSourceType,
    this.remediationTemplateId,
    this.remediationType,
  });

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
      configRuleId: map['configRuleId'] == null ? null : (map['configRuleId'] as String).input(),
      invokeType: map['invokeType'] == null ? null : (map['invokeType'] as String).input(),
      params: map['params'] == null ? null : (map['params'] as String).input(),
      remediationId: map['remediationId'] == null ? null : (map['remediationId'] as String).input(),
      remediationSourceType: map['remediationSourceType'] == null ? null : (map['remediationSourceType'] as String).input(),
      remediationTemplateId: map['remediationTemplateId'] == null ? null : (map['remediationTemplateId'] as String).input(),
      remediationType: map['remediationType'] == null ? null : (map['remediationType'] as String).input(),
    );
  }
}


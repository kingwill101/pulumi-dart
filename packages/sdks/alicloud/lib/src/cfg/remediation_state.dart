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
      configRuleId: (() {
        final guardedValue = map['configRuleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      invokeType: (() {
        final guardedValue = map['invokeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      params: (() {
        final guardedValue = map['params'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remediationId: (() {
        final guardedValue = map['remediationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remediationSourceType: (() {
        final guardedValue = map['remediationSourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remediationTemplateId: (() {
        final guardedValue = map['remediationTemplateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remediationType: (() {
        final guardedValue = map['remediationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

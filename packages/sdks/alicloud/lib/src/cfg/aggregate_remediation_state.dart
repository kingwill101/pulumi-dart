// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AggregateRemediation resources.
class AggregateRemediationState {
  /// The account Group ID.
  /// For more information about how to obtain the account group ID, see ListAggregators.
  final pulumi.Input<String>? aggregatorId;
  /// The rule ID.
  /// For more information about how to obtain the rule ID, see [ListAggregateConfigRules].
  final pulumi.Input<String>? configRuleId;
  /// Correction of execution mode. Value:
  /// - NON_EXECUTION: Not executed.
  /// - AUTO_EXECUTION: Automatically executed.
  /// - MANUAL_EXECUTION: Execute manually.
  /// - NOT_CONFIG: Not set.
  final pulumi.Input<String>? invokeType;
  /// Multi-account remediation ID
  final pulumi.Input<String>? remediationId;
  /// Correct the parameters of the settings.
  /// For more information about how to obtain the parameters of remediation settings, see the parameter 'Template definition' in ListRemediationTemplates '.
  final pulumi.Input<String>? remediationOriginParams;
  /// The source of the template to perform the correction. Value:
  /// - ALIYUN (default): Official website template.
  /// - CUSTOM: CUSTOM template.
  /// - NONE: NONE.
  final pulumi.Input<String>? remediationSourceType;
  /// The ID of the correction template.
  final pulumi.Input<String>? remediationTemplateId;
  /// Remediation type. Value:
  /// - OOS: Operation and maintenance orchestration (Template correction).
  /// - FC: Function Compute (custom correction).
  final pulumi.Input<String>? remediationType;

  /// Creates a new [AggregateRemediationState].
  /// [aggregatorId] The account Group ID.
  /// [configRuleId] The rule ID.
  /// [invokeType] Correction of execution mode. Value:
  /// [remediationId] Multi-account remediation ID
  /// [remediationOriginParams] Correct the parameters of the settings.
  /// [remediationSourceType] The source of the template to perform the correction. Value:
  /// [remediationTemplateId] The ID of the correction template.
  /// [remediationType] Remediation type. Value:
  AggregateRemediationState({
    this.aggregatorId,
    this.configRuleId,
    this.invokeType,
    this.remediationId,
    this.remediationOriginParams,
    this.remediationSourceType,
    this.remediationTemplateId,
    this.remediationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregatorId': ?aggregatorId,
      'configRuleId': ?configRuleId,
      'invokeType': ?invokeType,
      'remediationId': ?remediationId,
      'remediationOriginParams': ?remediationOriginParams,
      'remediationSourceType': ?remediationSourceType,
      'remediationTemplateId': ?remediationTemplateId,
      'remediationType': ?remediationType,
    };
  }

  factory AggregateRemediationState.fromMap(Map<String, dynamic> map) {
    return AggregateRemediationState(
      aggregatorId: (() { final guardedValue = map['aggregatorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configRuleId: (() { final guardedValue = map['configRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invokeType: (() { final guardedValue = map['invokeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remediationId: (() { final guardedValue = map['remediationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remediationOriginParams: (() { final guardedValue = map['remediationOriginParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remediationSourceType: (() { final guardedValue = map['remediationSourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remediationTemplateId: (() { final guardedValue = map['remediationTemplateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remediationType: (() { final guardedValue = map['remediationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


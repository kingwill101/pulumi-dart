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
      aggregatorId: map['aggregatorId'] == null ? null : (map['aggregatorId'] as String).input(),
      configRuleId: map['configRuleId'] == null ? null : (map['configRuleId'] as String).input(),
      invokeType: map['invokeType'] == null ? null : (map['invokeType'] as String).input(),
      remediationId: map['remediationId'] == null ? null : (map['remediationId'] as String).input(),
      remediationOriginParams: map['remediationOriginParams'] == null ? null : (map['remediationOriginParams'] as String).input(),
      remediationSourceType: map['remediationSourceType'] == null ? null : (map['remediationSourceType'] as String).input(),
      remediationTemplateId: map['remediationTemplateId'] == null ? null : (map['remediationTemplateId'] as String).input(),
      remediationType: map['remediationType'] == null ? null : (map['remediationType'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Remediation resources.
class RemediationState {
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

  /// Creates a new [RemediationState].
  /// [aggregatorId] The account Group ID.
  /// [configRuleId] The rule ID.
  /// [invokeType] Correction of execution mode. Value:
  /// [remediationId] Multi-account remediation ID
  /// [remediationOriginParams] Correct the parameters of the settings.
  /// [remediationSourceType] The source of the template to perform the correction. Value:
  /// [remediationTemplateId] The ID of the correction template.
  /// [remediationType] Remediation type. Value:
  RemediationState({
    pulumi.Output<String>? aggregatorId,
    pulumi.Output<String>? configRuleId,
    pulumi.Output<String>? invokeType,
    pulumi.Output<String>? remediationId,
    pulumi.Output<String>? remediationOriginParams,
    pulumi.Output<String>? remediationSourceType,
    pulumi.Output<String>? remediationTemplateId,
    pulumi.Output<String>? remediationType,
  }) :
      aggregatorId = pulumi.Input.asOptionalInput<String>(aggregatorId),
      configRuleId = pulumi.Input.asOptionalInput<String>(configRuleId),
      invokeType = pulumi.Input.asOptionalInput<String>(invokeType),
      remediationId = pulumi.Input.asOptionalInput<String>(remediationId),
      remediationOriginParams = pulumi.Input.asOptionalInput<String>(remediationOriginParams),
      remediationSourceType = pulumi.Input.asOptionalInput<String>(remediationSourceType),
      remediationTemplateId = pulumi.Input.asOptionalInput<String>(remediationTemplateId),
      remediationType = pulumi.Input.asOptionalInput<String>(remediationType);

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

  factory RemediationState.fromMap(Map<String, dynamic> map) {
    return RemediationState(
      aggregatorId: map['aggregatorId'] == null ? null : pulumi.Output.create<String>(map['aggregatorId'] as String),
      configRuleId: map['configRuleId'] == null ? null : pulumi.Output.create<String>(map['configRuleId'] as String),
      invokeType: map['invokeType'] == null ? null : pulumi.Output.create<String>(map['invokeType'] as String),
      remediationId: map['remediationId'] == null ? null : pulumi.Output.create<String>(map['remediationId'] as String),
      remediationOriginParams: map['remediationOriginParams'] == null ? null : pulumi.Output.create<String>(map['remediationOriginParams'] as String),
      remediationSourceType: map['remediationSourceType'] == null ? null : pulumi.Output.create<String>(map['remediationSourceType'] as String),
      remediationTemplateId: map['remediationTemplateId'] == null ? null : pulumi.Output.create<String>(map['remediationTemplateId'] as String),
      remediationType: map['remediationType'] == null ? null : pulumi.Output.create<String>(map['remediationType'] as String),
    );
  }
}


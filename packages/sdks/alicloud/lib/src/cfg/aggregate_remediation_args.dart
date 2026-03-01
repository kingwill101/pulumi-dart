// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_aggregate_remediation_aggregate_remediation_args_doc}
/// The set of arguments for AggregateRemediation.
/// {@endtemplate}
/// {@macro pulumi_cfg_aggregate_remediation_aggregate_remediation_args_doc}
class AggregateRemediationArgs {
  /// The account Group ID.
  /// For more information about how to obtain the account group ID, see ListAggregators.
  final pulumi.Input<String> aggregatorId;
  /// The rule ID.
  /// For more information about how to obtain the rule ID, see [ListAggregateConfigRules].
  final pulumi.Input<String> configRuleId;
  /// Correction of execution mode. Value:
  /// - NON_EXECUTION: Not executed.
  /// - AUTO_EXECUTION: Automatically executed.
  /// - MANUAL_EXECUTION: Execute manually.
  /// - NOT_CONFIG: Not set.
  final pulumi.Input<String> invokeType;
  /// Correct the parameters of the settings.
  /// For more information about how to obtain the parameters of remediation settings, see the parameter 'Template definition' in ListRemediationTemplates '.
  final pulumi.Input<String> remediationOriginParams;
  /// The source of the template to perform the correction. Value:
  /// - ALIYUN (default): Official website template.
  /// - CUSTOM: CUSTOM template.
  /// - NONE: NONE.
  final pulumi.Input<String>? remediationSourceType;
  /// The ID of the correction template.
  final pulumi.Input<String> remediationTemplateId;
  /// Remediation type. Value:
  /// - OOS: Operation and maintenance orchestration (Template correction).
  /// - FC: Function Compute (custom correction).
  final pulumi.Input<String> remediationType;

  /// Creates a new [AggregateRemediationArgs].
  /// [aggregatorId] The account Group ID.
  /// [configRuleId] The rule ID.
  /// [invokeType] Correction of execution mode. Value:
  /// [remediationOriginParams] Correct the parameters of the settings.
  /// [remediationSourceType] The source of the template to perform the correction. Value:
  /// [remediationTemplateId] The ID of the correction template.
  /// [remediationType] Remediation type. Value:
  AggregateRemediationArgs({
    required pulumi.Output<String> aggregatorId,
    required pulumi.Output<String> configRuleId,
    required pulumi.Output<String> invokeType,
    required pulumi.Output<String> remediationOriginParams,
    pulumi.Output<String>? remediationSourceType,
    required pulumi.Output<String> remediationTemplateId,
    required pulumi.Output<String> remediationType,
  }) :
      aggregatorId = pulumi.Input.asInput<String>(aggregatorId),
      configRuleId = pulumi.Input.asInput<String>(configRuleId),
      invokeType = pulumi.Input.asInput<String>(invokeType),
      remediationOriginParams = pulumi.Input.asInput<String>(remediationOriginParams),
      remediationSourceType = pulumi.Input.asOptionalInput<String>(remediationSourceType),
      remediationTemplateId = pulumi.Input.asInput<String>(remediationTemplateId),
      remediationType = pulumi.Input.asInput<String>(remediationType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregatorId': aggregatorId,
      'configRuleId': configRuleId,
      'invokeType': invokeType,
      'remediationOriginParams': remediationOriginParams,
      'remediationSourceType': ?remediationSourceType,
      'remediationTemplateId': remediationTemplateId,
      'remediationType': remediationType,
    };
  }

  factory AggregateRemediationArgs.fromMap(Map<String, dynamic> map) {
    return AggregateRemediationArgs(
      aggregatorId: pulumi.Output.create<String>(map['aggregatorId'] as String),
      configRuleId: pulumi.Output.create<String>(map['configRuleId'] as String),
      invokeType: pulumi.Output.create<String>(map['invokeType'] as String),
      remediationOriginParams: pulumi.Output.create<String>(map['remediationOriginParams'] as String),
      remediationSourceType: map['remediationSourceType'] == null ? null : pulumi.Output.create<String>(map['remediationSourceType'] as String),
      remediationTemplateId: pulumi.Output.create<String>(map['remediationTemplateId'] as String),
      remediationType: pulumi.Output.create<String>(map['remediationType'] as String),
    );
  }
}


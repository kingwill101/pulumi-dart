// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_configaggregate_remediation_remediation_args_doc}
/// The set of arguments for Remediation.
/// {@endtemplate}
/// {@macro pulumi_configaggregate_remediation_remediation_args_doc}
class RemediationArgs {
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

  /// Creates a new [RemediationArgs].
  /// [aggregatorId] The account Group ID.
  /// [configRuleId] The rule ID.
  /// [invokeType] Correction of execution mode. Value:
  /// [remediationOriginParams] Correct the parameters of the settings.
  /// [remediationSourceType] The source of the template to perform the correction. Value:
  /// [remediationTemplateId] The ID of the correction template.
  /// [remediationType] Remediation type. Value:
  RemediationArgs({
    required this.aggregatorId,
    required this.configRuleId,
    required this.invokeType,
    required this.remediationOriginParams,
    this.remediationSourceType,
    required this.remediationTemplateId,
    required this.remediationType,
  });

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

  factory RemediationArgs.fromMap(Map<String, dynamic> map) {
    return RemediationArgs(
      aggregatorId: pulumi.Input.fromValue(map['aggregatorId'] as String),
      configRuleId: pulumi.Input.fromValue(map['configRuleId'] as String),
      invokeType: pulumi.Input.fromValue(map['invokeType'] as String),
      remediationOriginParams: pulumi.Input.fromValue(map['remediationOriginParams'] as String),
      remediationSourceType: (() { final guardedValue = map['remediationSourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remediationTemplateId: pulumi.Input.fromValue(map['remediationTemplateId'] as String),
      remediationType: pulumi.Input.fromValue(map['remediationType'] as String),
    );
  }
}


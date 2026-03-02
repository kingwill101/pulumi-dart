// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_failure_conditional_conditional_branch_condition.dart';
import 'v2models_intent_confirmation_setting_failure_conditional_conditional_branch_next_step.dart';
import 'v2models_intent_confirmation_setting_failure_conditional_conditional_branch_response.dart';

class V2modelsIntentConfirmationSettingFailureConditionalConditionalBranch {
  /// Configuration block for the expression to evaluate. If the condition is true, the branch's actions are taken. See `condition`.
  final pulumi.Input<V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchCondition>? condition;
  /// Name of the branch.
  final pulumi.Input<String> name;
  /// Configuration block for the next step in the conversation. See `next_step`.
  final pulumi.Input<V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchNextStep>? nextStep;
  /// Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  final pulumi.Input<V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponse>? response;

  /// Creates a new [V2modelsIntentConfirmationSettingFailureConditionalConditionalBranch].
  /// [condition] Configuration block for the expression to evaluate. If the condition is true, the branch's actions are taken. See `condition`.
  /// [name] Name of the branch.
  /// [nextStep] Configuration block for the next step in the conversation. See `next_step`.
  /// [response] Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  V2modelsIntentConfirmationSettingFailureConditionalConditionalBranch({
    this.condition,
    required this.name,
    this.nextStep,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'name': name,
      'nextStep': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchNextStep, Map<String, dynamic>>(nextStep, (value) => value.toMap()),
      'response': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponse, Map<String, dynamic>>(response, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentConfirmationSettingFailureConditionalConditionalBranch.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingFailureConditionalConditionalBranch(
      condition: map['condition'] == null ? null : ((V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())).input()).input(),
      name: (map['name'] as String).input(),
      nextStep: map['nextStep'] == null ? null : ((V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchNextStep.fromMap((map['nextStep']! as Map).cast<String, dynamic>())).input()).input(),
      response: map['response'] == null ? null : ((V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponse.fromMap((map['response']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


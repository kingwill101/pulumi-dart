// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_confirmation_conditional_conditional_branch_condition.dart';
import 'v2models_intent_confirmation_setting_confirmation_conditional_conditional_branch_next_step.dart';
import 'v2models_intent_confirmation_setting_confirmation_conditional_conditional_branch_response.dart';

class V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranch {
  /// Configuration block for the expression to evaluate. If the condition is true, the branch's actions are taken. See `condition`.
  final pulumi.Input<V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchCondition>? condition;
  /// Name of the branch.
  final pulumi.Input<String> name;
  /// Configuration block for the next step in the conversation. See `next_step`.
  final pulumi.Input<V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStep>? nextStep;
  /// Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  final pulumi.Input<V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponse>? response;

  /// Creates a new [V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranch].
  /// [condition] Configuration block for the expression to evaluate. If the condition is true, the branch's actions are taken. See `condition`.
  /// [name] Name of the branch.
  /// [nextStep] Configuration block for the next step in the conversation. See `next_step`.
  /// [response] Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranch({
    this.condition,
    required this.name,
    this.nextStep,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'name': name,
      'nextStep': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStep, Map<String, dynamic>>(nextStep, (value) => value.toMap()),
      'response': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponse, Map<String, dynamic>>(response, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranch.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranch(
      condition: map['condition'] == null ? null : (V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      nextStep: map['nextStep'] == null ? null : (V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStep.fromMap((map['nextStep'] as Map).cast<String, dynamic>())).input(),
      response: map['response'] == null ? null : (V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponse.fromMap((map['response'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


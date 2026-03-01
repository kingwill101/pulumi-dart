// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_failure_conditional_conditional_branch_condition.dart';
import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_failure_conditional_conditional_branch_next_step.dart';
import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_failure_conditional_conditional_branch_response.dart';

class V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranch {
  /// Configuration block for the expression to evaluate. If the condition is true, the branch's actions are taken. See `condition`.
  final V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchCondition? condition;
  /// Name of the branch.
  final String name;
  /// Configuration block for the next step in the conversation. See `next_step`.
  final V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStep? nextStep;
  /// Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  final V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponse? response;

  /// Creates a new [V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranch].
  /// [condition] Configuration block for the expression to evaluate. If the condition is true, the branch's actions are taken. See `condition`.
  /// [name] Name of the branch.
  /// [nextStep] Configuration block for the next step in the conversation. See `next_step`.
  /// [response] Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranch({
    this.condition,
    required this.name,
    this.nextStep,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition == null ? null : condition!.toMap(),
      'name': name,
      'nextStep': ?nextStep == null ? null : nextStep!.toMap(),
      'response': ?response == null ? null : response!.toMap(),
    };
  }

  factory V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranch.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranch(
      condition: map['condition'] == null ? null : V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchCondition.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      nextStep: map['nextStep'] == null ? null : V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStep.fromMap((map['nextStep'] as Map).cast<String, dynamic>()),
      response: map['response'] == null ? null : V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponse.fromMap((map['response'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_conditional_conditional_branch_condition.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_conditional_conditional_branch_next_step.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_conditional_conditional_branch_response.dart';

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranch {
  /// Configuration block for the expression to evaluate. If the condition is true, the branch's actions are taken. See `condition`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchCondition? condition;
  /// Name of the branch.
  final String name;
  /// Configuration block for the next step in the conversation. See `next_step`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStep? nextStep;
  /// Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponse? response;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranch].
  /// [condition] Configuration block for the expression to evaluate. If the condition is true, the branch's actions are taken. See `condition`.
  /// [name] Name of the branch.
  /// [nextStep] Configuration block for the next step in the conversation. See `next_step`.
  /// [response] Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranch({
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

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranch.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranch(
      condition: map['condition'] == null ? null : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchCondition.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      nextStep: map['nextStep'] == null ? null : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStep.fromMap((map['nextStep'] as Map).cast<String, dynamic>()),
      response: map['response'] == null ? null : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponse.fromMap((map['response'] as Map).cast<String, dynamic>()),
    );
  }
}


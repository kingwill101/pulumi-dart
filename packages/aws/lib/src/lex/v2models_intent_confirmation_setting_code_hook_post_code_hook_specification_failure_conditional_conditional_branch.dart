// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_conditional_conditional_branch_condition.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_conditional_conditional_branch_next_step.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_conditional_conditional_branch_response.dart';

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranch {
  /// Configuration block for the expression to evaluate. If the condition is true, the branch's actions are taken. See `condition`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchCondition?
  condition;

  /// Name of the branch.
  final String name;

  /// Configuration block for the next step in the conversation. See `next_step`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStep?
  nextStep;

  /// Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponse?
  response;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranch].
  /// [condition] Configuration block for the expression to evaluate. If the condition is true, the branch's actions are taken. See `condition`.
  /// [name] Name of the branch.
  /// [nextStep] Configuration block for the next step in the conversation. See `next_step`.
  /// [response] Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranch({
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

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranch.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranch(
      condition: map['condition'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] as String,
      nextStep: map['nextStep'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchNextStep.fromMap(
              (map['nextStep'] as Map).cast<String, dynamic>(),
            ),
      response: map['response'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchResponse.fromMap(
              (map['response'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

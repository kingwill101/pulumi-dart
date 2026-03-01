// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_confirmation_setting_declination_conditional_conditional_branch_condition.dart';
import 'v2models_intent_confirmation_setting_declination_conditional_conditional_branch_next_step.dart';
import 'v2models_intent_confirmation_setting_declination_conditional_conditional_branch_response.dart';

class V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranch {
  /// Configuration block for the expression to evaluate. If the condition is true, the branch's actions are taken. See `condition`.
  final V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchCondition?
  condition;

  /// Name of the branch.
  final String name;

  /// Configuration block for the next step in the conversation. See `next_step`.
  final V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStep?
  nextStep;

  /// Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  final V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponse?
  response;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranch].
  /// [condition] Configuration block for the expression to evaluate. If the condition is true, the branch's actions are taken. See `condition`.
  /// [name] Name of the branch.
  /// [nextStep] Configuration block for the next step in the conversation. See `next_step`.
  /// [response] Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranch({
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

  factory V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranch.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranch(
      condition: map['condition'] == null
          ? null
          : V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] as String,
      nextStep: map['nextStep'] == null
          ? null
          : V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchNextStep.fromMap(
              (map['nextStep'] as Map).cast<String, dynamic>(),
            ),
      response: map['response'] == null
          ? null
          : V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchResponse.fromMap(
              (map['response'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_conditional_default_branch_next_step.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_conditional_default_branch_response.dart';

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranch {
  /// Configuration block for the next step in the conversation. See `next_step`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStep?
      nextStep;

  /// Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponse?
      response;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranch].
  /// [nextStep] Configuration block for the next step in the conversation. See `next_step`.
  /// [response] Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranch({
    this.nextStep,
    this.response,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nextStepValue = nextStep;
    if (nextStepValue != null) {
      map['nextStep'] = nextStepValue.toMap();
    }
    final responseValue = response;
    if (responseValue != null) {
      map['response'] = responseValue.toMap();
    }
    return map;
  }

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranch.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranch(
      nextStep: map['nextStep'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchNextStep
              .fromMap((map['nextStep'] as Map).cast<String, dynamic>()),
      response: map['response'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponse
              .fromMap((map['response'] as Map).cast<String, dynamic>()),
    );
  }
}

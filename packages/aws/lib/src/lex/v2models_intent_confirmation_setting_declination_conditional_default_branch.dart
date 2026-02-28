// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_confirmation_setting_declination_conditional_default_branch_next_step.dart';
import 'v2models_intent_confirmation_setting_declination_conditional_default_branch_response.dart';

class V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranch {
  /// Configuration block for the next step in the conversation. See `next_step`.
  final V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchNextStep?
      nextStep;

  /// Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  final V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponse?
      response;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranch].
  /// [nextStep] Configuration block for the next step in the conversation. See `next_step`.
  /// [response] Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranch({
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

  factory V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranch.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranch(
      nextStep: map['nextStep'] == null
          ? null
          : V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchNextStep
              .fromMap((map['nextStep'] as Map).cast<String, dynamic>()),
      response: map['response'] == null
          ? null
          : V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponse
              .fromMap((map['response'] as Map).cast<String, dynamic>()),
    );
  }
}

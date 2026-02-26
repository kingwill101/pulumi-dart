// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_intent_confirmation_setting_failure_conditional_default_branch_next_step/v2models_intent_confirmation_setting_failure_conditional_default_branch_next_step.dart';
import '../v2models_intent_confirmation_setting_failure_conditional_default_branch_response/v2models_intent_confirmation_setting_failure_conditional_default_branch_response.dart';

class V2modelsIntentConfirmationSettingFailureConditionalDefaultBranch {
  /// Configuration block for the next step in the conversation. See <span pulumi-lang-nodejs="`nextStep`" pulumi-lang-dotnet="`NextStep`" pulumi-lang-go="`nextStep`" pulumi-lang-python="`next_step`" pulumi-lang-yaml="`nextStep`" pulumi-lang-java="`nextStep`">`next_step`</span>.
  final V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStep?
      nextStep;

  /// Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See <span pulumi-lang-nodejs="`response`" pulumi-lang-dotnet="`Response`" pulumi-lang-go="`response`" pulumi-lang-python="`response`" pulumi-lang-yaml="`response`" pulumi-lang-java="`response`">`response`</span>.
  final V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponse?
      response;

  V2modelsIntentConfirmationSettingFailureConditionalDefaultBranch({
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

  factory V2modelsIntentConfirmationSettingFailureConditionalDefaultBranch.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingFailureConditionalDefaultBranch(
      nextStep: map['nextStep'] == null
          ? null
          : V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchNextStep
              .fromMap((map['nextStep'] as Map).cast<String, dynamic>()),
      response: map['response'] == null
          ? null
          : V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponse
              .fromMap((map['response'] as Map).cast<String, dynamic>()),
    );
  }
}

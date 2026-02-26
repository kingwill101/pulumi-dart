// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_conditional_conditional_branch_condition/v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_conditional_conditional_branch_condition.dart';
import '../v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_conditional_conditional_branch_next_step/v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_conditional_conditional_branch_next_step.dart';
import '../v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_conditional_conditional_branch_response/v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_conditional_conditional_branch_response.dart';

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranch {
  /// Configuration block for the expression to evaluate. If the condition is true, the branch's actions are taken. See <span pulumi-lang-nodejs="`condition`" pulumi-lang-dotnet="`Condition`" pulumi-lang-go="`condition`" pulumi-lang-python="`condition`" pulumi-lang-yaml="`condition`" pulumi-lang-java="`condition`">`condition`</span>.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchCondition?
      condition;

  /// Name of the branch.
  final String name;

  /// Configuration block for the next step in the conversation. See <span pulumi-lang-nodejs="`nextStep`" pulumi-lang-dotnet="`NextStep`" pulumi-lang-go="`nextStep`" pulumi-lang-python="`next_step`" pulumi-lang-yaml="`nextStep`" pulumi-lang-java="`nextStep`">`next_step`</span>.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStep?
      nextStep;

  /// Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See <span pulumi-lang-nodejs="`response`" pulumi-lang-dotnet="`Response`" pulumi-lang-go="`response`" pulumi-lang-python="`response`" pulumi-lang-yaml="`response`" pulumi-lang-java="`response`">`response`</span>.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponse?
      response;

  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranch({
    this.condition,
    required this.name,
    this.nextStep,
    this.response,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue.toMap();
    }
    map['name'] = name;
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

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranch.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranch(
      condition: map['condition'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchCondition
              .fromMap((map['condition'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      nextStep: map['nextStep'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchNextStep
              .fromMap((map['nextStep'] as Map).cast<String, dynamic>()),
      response: map['response'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchResponse
              .fromMap((map['response'] as Map).cast<String, dynamic>()),
    );
  }
}

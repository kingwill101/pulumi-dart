// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_intent_confirmation_setting_code_hook/v2models_intent_confirmation_setting_code_hook.dart';
import '../v2models_intent_confirmation_setting_confirmation_conditional/v2models_intent_confirmation_setting_confirmation_conditional.dart';
import '../v2models_intent_confirmation_setting_confirmation_next_step/v2models_intent_confirmation_setting_confirmation_next_step.dart';
import '../v2models_intent_confirmation_setting_confirmation_response/v2models_intent_confirmation_setting_confirmation_response.dart';
import '../v2models_intent_confirmation_setting_declination_conditional/v2models_intent_confirmation_setting_declination_conditional.dart';
import '../v2models_intent_confirmation_setting_declination_next_step/v2models_intent_confirmation_setting_declination_next_step.dart';
import '../v2models_intent_confirmation_setting_declination_response/v2models_intent_confirmation_setting_declination_response.dart';
import '../v2models_intent_confirmation_setting_elicitation_code_hook/v2models_intent_confirmation_setting_elicitation_code_hook.dart';
import '../v2models_intent_confirmation_setting_failure_conditional/v2models_intent_confirmation_setting_failure_conditional.dart';
import '../v2models_intent_confirmation_setting_failure_next_step/v2models_intent_confirmation_setting_failure_next_step.dart';
import '../v2models_intent_confirmation_setting_failure_response/v2models_intent_confirmation_setting_failure_response.dart';
import '../v2models_intent_confirmation_setting_prompt_specification/v2models_intent_confirmation_setting_prompt_specification.dart';

class V2modelsIntentConfirmationSetting {
  /// Whether the intent's confirmation is sent to the user. When this field is false, confirmation and declination responses aren't sent. If the active field isn't specified, the default is true.
  final bool? active;

  /// Configuration block for the intent's confirmation step. The dialog code hook is triggered based on these invocation settings when the confirmation next step or declination next step or failure next step is <span pulumi-lang-nodejs="`invokeDialogCodeHook`" pulumi-lang-dotnet="`InvokeDialogCodeHook`" pulumi-lang-go="`invokeDialogCodeHook`" pulumi-lang-python="`invoke_dialog_code_hook`" pulumi-lang-yaml="`invokeDialogCodeHook`" pulumi-lang-java="`invokeDialogCodeHook`">`invoke_dialog_code_hook`</span>.  See <span pulumi-lang-nodejs="`codeHook`" pulumi-lang-dotnet="`CodeHook`" pulumi-lang-go="`codeHook`" pulumi-lang-python="`code_hook`" pulumi-lang-yaml="`codeHook`" pulumi-lang-java="`codeHook`">`code_hook`</span>.
  final V2modelsIntentConfirmationSettingCodeHook? codeHook;

  /// Configuration block for conditional branches to evaluate after the intent is closed. See <span pulumi-lang-nodejs="`confirmationConditional`" pulumi-lang-dotnet="`ConfirmationConditional`" pulumi-lang-go="`confirmationConditional`" pulumi-lang-python="`confirmation_conditional`" pulumi-lang-yaml="`confirmationConditional`" pulumi-lang-java="`confirmationConditional`">`confirmation_conditional`</span>.
  final V2modelsIntentConfirmationSettingConfirmationConditional?
      confirmationConditional;

  /// Configuration block for the next step that the bot executes when the customer confirms the intent. See <span pulumi-lang-nodejs="`confirmationNextStep`" pulumi-lang-dotnet="`ConfirmationNextStep`" pulumi-lang-go="`confirmationNextStep`" pulumi-lang-python="`confirmation_next_step`" pulumi-lang-yaml="`confirmationNextStep`" pulumi-lang-java="`confirmationNextStep`">`confirmation_next_step`</span>.
  final V2modelsIntentConfirmationSettingConfirmationNextStep?
      confirmationNextStep;

  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See <span pulumi-lang-nodejs="`confirmationResponse`" pulumi-lang-dotnet="`ConfirmationResponse`" pulumi-lang-go="`confirmationResponse`" pulumi-lang-python="`confirmation_response`" pulumi-lang-yaml="`confirmationResponse`" pulumi-lang-java="`confirmationResponse`">`confirmation_response`</span>.
  final V2modelsIntentConfirmationSettingConfirmationResponse?
      confirmationResponse;

  /// Configuration block for conditional branches to evaluate after the intent is declined. See <span pulumi-lang-nodejs="`declinationConditional`" pulumi-lang-dotnet="`DeclinationConditional`" pulumi-lang-go="`declinationConditional`" pulumi-lang-python="`declination_conditional`" pulumi-lang-yaml="`declinationConditional`" pulumi-lang-java="`declinationConditional`">`declination_conditional`</span>.
  final V2modelsIntentConfirmationSettingDeclinationConditional?
      declinationConditional;

  /// Configuration block for the next step that the bot executes when the customer declines the intent. See <span pulumi-lang-nodejs="`declinationNextStep`" pulumi-lang-dotnet="`DeclinationNextStep`" pulumi-lang-go="`declinationNextStep`" pulumi-lang-python="`declination_next_step`" pulumi-lang-yaml="`declinationNextStep`" pulumi-lang-java="`declinationNextStep`">`declination_next_step`</span>.
  final V2modelsIntentConfirmationSettingDeclinationNextStep?
      declinationNextStep;

  /// Configuration block for when the user answers "no" to the question defined in <span pulumi-lang-nodejs="`promptSpecification`" pulumi-lang-dotnet="`PromptSpecification`" pulumi-lang-go="`promptSpecification`" pulumi-lang-python="`prompt_specification`" pulumi-lang-yaml="`promptSpecification`" pulumi-lang-java="`promptSpecification`">`prompt_specification`</span>, Amazon Lex responds with this response to acknowledge that the intent was canceled. See <span pulumi-lang-nodejs="`declinationResponse`" pulumi-lang-dotnet="`DeclinationResponse`" pulumi-lang-go="`declinationResponse`" pulumi-lang-python="`declination_response`" pulumi-lang-yaml="`declinationResponse`" pulumi-lang-java="`declinationResponse`">`declination_response`</span>.
  final V2modelsIntentConfirmationSettingDeclinationResponse?
      declinationResponse;

  /// Configuration block for when the code hook is invoked during confirmation prompt retries. See <span pulumi-lang-nodejs="`elicitationCodeHook`" pulumi-lang-dotnet="`ElicitationCodeHook`" pulumi-lang-go="`elicitationCodeHook`" pulumi-lang-python="`elicitation_code_hook`" pulumi-lang-yaml="`elicitationCodeHook`" pulumi-lang-java="`elicitationCodeHook`">`elicitation_code_hook`</span>.
  final V2modelsIntentConfirmationSettingElicitationCodeHook?
      elicitationCodeHook;

  /// Configuration block for conditional branches. Branches are evaluated in the order that they are entered in the list. The first branch with a condition that evaluates to true is executed. The last branch in the list is the default branch. The default branch should not have any condition expression. The default branch is executed if no other branch has a matching condition. See <span pulumi-lang-nodejs="`failureConditional`" pulumi-lang-dotnet="`FailureConditional`" pulumi-lang-go="`failureConditional`" pulumi-lang-python="`failure_conditional`" pulumi-lang-yaml="`failureConditional`" pulumi-lang-java="`failureConditional`">`failure_conditional`</span>.
  final V2modelsIntentConfirmationSettingFailureConditional? failureConditional;

  /// Configuration block for the next step to take in the conversation if the confirmation step fails. See <span pulumi-lang-nodejs="`failureNextStep`" pulumi-lang-dotnet="`FailureNextStep`" pulumi-lang-go="`failureNextStep`" pulumi-lang-python="`failure_next_step`" pulumi-lang-yaml="`failureNextStep`" pulumi-lang-java="`failureNextStep`">`failure_next_step`</span>.
  final V2modelsIntentConfirmationSettingFailureNextStep? failureNextStep;

  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See <span pulumi-lang-nodejs="`failureResponse`" pulumi-lang-dotnet="`FailureResponse`" pulumi-lang-go="`failureResponse`" pulumi-lang-python="`failure_response`" pulumi-lang-yaml="`failureResponse`" pulumi-lang-java="`failureResponse`">`failure_response`</span>.
  final V2modelsIntentConfirmationSettingFailureResponse? failureResponse;

  /// Configuration block for prompting the user to confirm the intent. This question should have a yes or no answer. Amazon Lex uses this prompt to ensure that the user acknowledges that the intent is ready for fulfillment. See <span pulumi-lang-nodejs="`promptSpecification`" pulumi-lang-dotnet="`PromptSpecification`" pulumi-lang-go="`promptSpecification`" pulumi-lang-python="`prompt_specification`" pulumi-lang-yaml="`promptSpecification`" pulumi-lang-java="`promptSpecification`">`prompt_specification`</span>.
  final V2modelsIntentConfirmationSettingPromptSpecification?
      promptSpecification;

  V2modelsIntentConfirmationSetting({
    this.active,
    this.codeHook,
    this.confirmationConditional,
    this.confirmationNextStep,
    this.confirmationResponse,
    this.declinationConditional,
    this.declinationNextStep,
    this.declinationResponse,
    this.elicitationCodeHook,
    this.failureConditional,
    this.failureNextStep,
    this.failureResponse,
    this.promptSpecification,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeValue = active;
    if (activeValue != null) {
      map['active'] = activeValue;
    }
    final codeHookValue = codeHook;
    if (codeHookValue != null) {
      map['codeHook'] = codeHookValue.toMap();
    }
    final confirmationConditionalValue = confirmationConditional;
    if (confirmationConditionalValue != null) {
      map['confirmationConditional'] = confirmationConditionalValue.toMap();
    }
    final confirmationNextStepValue = confirmationNextStep;
    if (confirmationNextStepValue != null) {
      map['confirmationNextStep'] = confirmationNextStepValue.toMap();
    }
    final confirmationResponseValue = confirmationResponse;
    if (confirmationResponseValue != null) {
      map['confirmationResponse'] = confirmationResponseValue.toMap();
    }
    final declinationConditionalValue = declinationConditional;
    if (declinationConditionalValue != null) {
      map['declinationConditional'] = declinationConditionalValue.toMap();
    }
    final declinationNextStepValue = declinationNextStep;
    if (declinationNextStepValue != null) {
      map['declinationNextStep'] = declinationNextStepValue.toMap();
    }
    final declinationResponseValue = declinationResponse;
    if (declinationResponseValue != null) {
      map['declinationResponse'] = declinationResponseValue.toMap();
    }
    final elicitationCodeHookValue = elicitationCodeHook;
    if (elicitationCodeHookValue != null) {
      map['elicitationCodeHook'] = elicitationCodeHookValue.toMap();
    }
    final failureConditionalValue = failureConditional;
    if (failureConditionalValue != null) {
      map['failureConditional'] = failureConditionalValue.toMap();
    }
    final failureNextStepValue = failureNextStep;
    if (failureNextStepValue != null) {
      map['failureNextStep'] = failureNextStepValue.toMap();
    }
    final failureResponseValue = failureResponse;
    if (failureResponseValue != null) {
      map['failureResponse'] = failureResponseValue.toMap();
    }
    final promptSpecificationValue = promptSpecification;
    if (promptSpecificationValue != null) {
      map['promptSpecification'] = promptSpecificationValue.toMap();
    }
    return map;
  }

  factory V2modelsIntentConfirmationSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSetting(
      active: map['active'] == null ? null : map['active'] as bool,
      codeHook: map['codeHook'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHook.fromMap(
              (map['codeHook'] as Map).cast<String, dynamic>()),
      confirmationConditional: map['confirmationConditional'] == null
          ? null
          : V2modelsIntentConfirmationSettingConfirmationConditional.fromMap(
              (map['confirmationConditional'] as Map).cast<String, dynamic>()),
      confirmationNextStep: map['confirmationNextStep'] == null
          ? null
          : V2modelsIntentConfirmationSettingConfirmationNextStep.fromMap(
              (map['confirmationNextStep'] as Map).cast<String, dynamic>()),
      confirmationResponse: map['confirmationResponse'] == null
          ? null
          : V2modelsIntentConfirmationSettingConfirmationResponse.fromMap(
              (map['confirmationResponse'] as Map).cast<String, dynamic>()),
      declinationConditional: map['declinationConditional'] == null
          ? null
          : V2modelsIntentConfirmationSettingDeclinationConditional.fromMap(
              (map['declinationConditional'] as Map).cast<String, dynamic>()),
      declinationNextStep: map['declinationNextStep'] == null
          ? null
          : V2modelsIntentConfirmationSettingDeclinationNextStep.fromMap(
              (map['declinationNextStep'] as Map).cast<String, dynamic>()),
      declinationResponse: map['declinationResponse'] == null
          ? null
          : V2modelsIntentConfirmationSettingDeclinationResponse.fromMap(
              (map['declinationResponse'] as Map).cast<String, dynamic>()),
      elicitationCodeHook: map['elicitationCodeHook'] == null
          ? null
          : V2modelsIntentConfirmationSettingElicitationCodeHook.fromMap(
              (map['elicitationCodeHook'] as Map).cast<String, dynamic>()),
      failureConditional: map['failureConditional'] == null
          ? null
          : V2modelsIntentConfirmationSettingFailureConditional.fromMap(
              (map['failureConditional'] as Map).cast<String, dynamic>()),
      failureNextStep: map['failureNextStep'] == null
          ? null
          : V2modelsIntentConfirmationSettingFailureNextStep.fromMap(
              (map['failureNextStep'] as Map).cast<String, dynamic>()),
      failureResponse: map['failureResponse'] == null
          ? null
          : V2modelsIntentConfirmationSettingFailureResponse.fromMap(
              (map['failureResponse'] as Map).cast<String, dynamic>()),
      promptSpecification: map['promptSpecification'] == null
          ? null
          : V2modelsIntentConfirmationSettingPromptSpecification.fromMap(
              (map['promptSpecification'] as Map).cast<String, dynamic>()),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_code_hook.dart';
import 'v2models_intent_confirmation_setting_confirmation_conditional.dart';
import 'v2models_intent_confirmation_setting_confirmation_next_step.dart';
import 'v2models_intent_confirmation_setting_confirmation_response.dart';
import 'v2models_intent_confirmation_setting_declination_conditional.dart';
import 'v2models_intent_confirmation_setting_declination_next_step.dart';
import 'v2models_intent_confirmation_setting_declination_response.dart';
import 'v2models_intent_confirmation_setting_elicitation_code_hook.dart';
import 'v2models_intent_confirmation_setting_failure_conditional.dart';
import 'v2models_intent_confirmation_setting_failure_next_step.dart';
import 'v2models_intent_confirmation_setting_failure_response.dart';
import 'v2models_intent_confirmation_setting_prompt_specification.dart';

class V2modelsIntentConfirmationSetting {
  /// Whether the intent's confirmation is sent to the user. When this field is false, confirmation and declination responses aren't sent. If the active field isn't specified, the default is true.
  final pulumi.Input<bool>? active;
  /// Configuration block for the intent's confirmation step. The dialog code hook is triggered based on these invocation settings when the confirmation next step or declination next step or failure next step is `invoke_dialog_code_hook`.  See `code_hook`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHook>? codeHook;
  /// Configuration block for conditional branches to evaluate after the intent is closed. See `confirmation_conditional`.
  final pulumi.Input<V2modelsIntentConfirmationSettingConfirmationConditional>? confirmationConditional;
  /// Configuration block for the next step that the bot executes when the customer confirms the intent. See `confirmation_next_step`.
  final pulumi.Input<V2modelsIntentConfirmationSettingConfirmationNextStep>? confirmationNextStep;
  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See `confirmation_response`.
  final pulumi.Input<V2modelsIntentConfirmationSettingConfirmationResponse>? confirmationResponse;
  /// Configuration block for conditional branches to evaluate after the intent is declined. See `declination_conditional`.
  final pulumi.Input<V2modelsIntentConfirmationSettingDeclinationConditional>? declinationConditional;
  /// Configuration block for the next step that the bot executes when the customer declines the intent. See `declination_next_step`.
  final pulumi.Input<V2modelsIntentConfirmationSettingDeclinationNextStep>? declinationNextStep;
  /// Configuration block for when the user answers "no" to the question defined in `prompt_specification`, Amazon Lex responds with this response to acknowledge that the intent was canceled. See `declination_response`.
  final pulumi.Input<V2modelsIntentConfirmationSettingDeclinationResponse>? declinationResponse;
  /// Configuration block for when the code hook is invoked during confirmation prompt retries. See `elicitation_code_hook`.
  final pulumi.Input<V2modelsIntentConfirmationSettingElicitationCodeHook>? elicitationCodeHook;
  /// Configuration block for conditional branches. Branches are evaluated in the order that they are entered in the list. The first branch with a condition that evaluates to true is executed. The last branch in the list is the default branch. The default branch should not have any condition expression. The default branch is executed if no other branch has a matching condition. See `failure_conditional`.
  final pulumi.Input<V2modelsIntentConfirmationSettingFailureConditional>? failureConditional;
  /// Configuration block for the next step to take in the conversation if the confirmation step fails. See `failure_next_step`.
  final pulumi.Input<V2modelsIntentConfirmationSettingFailureNextStep>? failureNextStep;
  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See `failure_response`.
  final pulumi.Input<V2modelsIntentConfirmationSettingFailureResponse>? failureResponse;
  /// Configuration block for prompting the user to confirm the intent. This question should have a yes or no answer. Amazon Lex uses this prompt to ensure that the user acknowledges that the intent is ready for fulfillment. See `prompt_specification`.
  final pulumi.Input<V2modelsIntentConfirmationSettingPromptSpecification>? promptSpecification;

  /// Creates a new [V2modelsIntentConfirmationSetting].
  /// [active] Whether the intent's confirmation is sent to the user. When this field is false, confirmation and declination responses aren't sent. If the active field isn't specified, the default is true.
  /// [codeHook] Configuration block for the intent's confirmation step. The dialog code hook is triggered based on these invocation settings when the confirmation next step or declination next step or failure next step is `invoke_dialog_code_hook`.  See `code_hook`.
  /// [confirmationConditional] Configuration block for conditional branches to evaluate after the intent is closed. See `confirmation_conditional`.
  /// [confirmationNextStep] Configuration block for the next step that the bot executes when the customer confirms the intent. See `confirmation_next_step`.
  /// [confirmationResponse] Configuration block for message groups that Amazon Lex uses to respond the user input. See `confirmation_response`.
  /// [declinationConditional] Configuration block for conditional branches to evaluate after the intent is declined. See `declination_conditional`.
  /// [declinationNextStep] Configuration block for the next step that the bot executes when the customer declines the intent. See `declination_next_step`.
  /// [declinationResponse] Configuration block for when the user answers "no" to the question defined in `prompt_specification`, Amazon Lex responds with this response to acknowledge that the intent was canceled. See `declination_response`.
  /// [elicitationCodeHook] Configuration block for when the code hook is invoked during confirmation prompt retries. See `elicitation_code_hook`.
  /// [failureConditional] Configuration block for conditional branches. Branches are evaluated in the order that they are entered in the list. The first branch with a condition that evaluates to true is executed. The last branch in the list is the default branch. The default branch should not have any condition expression. The default branch is executed if no other branch has a matching condition. See `failure_conditional`.
  /// [failureNextStep] Configuration block for the next step to take in the conversation if the confirmation step fails. See `failure_next_step`.
  /// [failureResponse] Configuration block for message groups that Amazon Lex uses to respond the user input. See `failure_response`.
  /// [promptSpecification] Configuration block for prompting the user to confirm the intent. This question should have a yes or no answer. Amazon Lex uses this prompt to ensure that the user acknowledges that the intent is ready for fulfillment. See `prompt_specification`.
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
    return <String, dynamic>{
      'active': ?active,
      'codeHook': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingCodeHook, Map<String, dynamic>>(codeHook, (value) => value.toMap()),
      'confirmationConditional': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingConfirmationConditional, Map<String, dynamic>>(confirmationConditional, (value) => value.toMap()),
      'confirmationNextStep': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingConfirmationNextStep, Map<String, dynamic>>(confirmationNextStep, (value) => value.toMap()),
      'confirmationResponse': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingConfirmationResponse, Map<String, dynamic>>(confirmationResponse, (value) => value.toMap()),
      'declinationConditional': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingDeclinationConditional, Map<String, dynamic>>(declinationConditional, (value) => value.toMap()),
      'declinationNextStep': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingDeclinationNextStep, Map<String, dynamic>>(declinationNextStep, (value) => value.toMap()),
      'declinationResponse': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingDeclinationResponse, Map<String, dynamic>>(declinationResponse, (value) => value.toMap()),
      'elicitationCodeHook': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingElicitationCodeHook, Map<String, dynamic>>(elicitationCodeHook, (value) => value.toMap()),
      'failureConditional': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingFailureConditional, Map<String, dynamic>>(failureConditional, (value) => value.toMap()),
      'failureNextStep': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingFailureNextStep, Map<String, dynamic>>(failureNextStep, (value) => value.toMap()),
      'failureResponse': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingFailureResponse, Map<String, dynamic>>(failureResponse, (value) => value.toMap()),
      'promptSpecification': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingPromptSpecification, Map<String, dynamic>>(promptSpecification, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentConfirmationSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSetting(
      active: map['active'] == null ? null : ((map['active'] as bool).input()).input(),
      codeHook: map['codeHook'] == null ? null : ((V2modelsIntentConfirmationSettingCodeHook.fromMap((map['codeHook']! as Map).cast<String, dynamic>())).input()).input(),
      confirmationConditional: map['confirmationConditional'] == null ? null : ((V2modelsIntentConfirmationSettingConfirmationConditional.fromMap((map['confirmationConditional']! as Map).cast<String, dynamic>())).input()).input(),
      confirmationNextStep: map['confirmationNextStep'] == null ? null : ((V2modelsIntentConfirmationSettingConfirmationNextStep.fromMap((map['confirmationNextStep']! as Map).cast<String, dynamic>())).input()).input(),
      confirmationResponse: map['confirmationResponse'] == null ? null : ((V2modelsIntentConfirmationSettingConfirmationResponse.fromMap((map['confirmationResponse']! as Map).cast<String, dynamic>())).input()).input(),
      declinationConditional: map['declinationConditional'] == null ? null : ((V2modelsIntentConfirmationSettingDeclinationConditional.fromMap((map['declinationConditional']! as Map).cast<String, dynamic>())).input()).input(),
      declinationNextStep: map['declinationNextStep'] == null ? null : ((V2modelsIntentConfirmationSettingDeclinationNextStep.fromMap((map['declinationNextStep']! as Map).cast<String, dynamic>())).input()).input(),
      declinationResponse: map['declinationResponse'] == null ? null : ((V2modelsIntentConfirmationSettingDeclinationResponse.fromMap((map['declinationResponse']! as Map).cast<String, dynamic>())).input()).input(),
      elicitationCodeHook: map['elicitationCodeHook'] == null ? null : ((V2modelsIntentConfirmationSettingElicitationCodeHook.fromMap((map['elicitationCodeHook']! as Map).cast<String, dynamic>())).input()).input(),
      failureConditional: map['failureConditional'] == null ? null : ((V2modelsIntentConfirmationSettingFailureConditional.fromMap((map['failureConditional']! as Map).cast<String, dynamic>())).input()).input(),
      failureNextStep: map['failureNextStep'] == null ? null : ((V2modelsIntentConfirmationSettingFailureNextStep.fromMap((map['failureNextStep']! as Map).cast<String, dynamic>())).input()).input(),
      failureResponse: map['failureResponse'] == null ? null : ((V2modelsIntentConfirmationSettingFailureResponse.fromMap((map['failureResponse']! as Map).cast<String, dynamic>())).input()).input(),
      promptSpecification: map['promptSpecification'] == null ? null : ((V2modelsIntentConfirmationSettingPromptSpecification.fromMap((map['promptSpecification']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


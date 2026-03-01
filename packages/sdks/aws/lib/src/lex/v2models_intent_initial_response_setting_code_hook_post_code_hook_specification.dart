// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_failure_conditional.dart';
import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_failure_next_step.dart';
import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_failure_response.dart';
import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_success_conditional.dart';
import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_success_next_step.dart';
import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_success_response.dart';
import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_timeout_conditional.dart';
import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_timeout_next_step.dart';
import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_timeout_response.dart';

class V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecification {
  /// Configuration block for conditional branches to evaluate after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed.
  final V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditional? failureConditional;
  /// Configuration block for the next step the bot runs after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed . See `failure_next_step`.
  final V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureNextStep? failureNextStep;
  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See `failure_response`.
  final V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponse? failureResponse;
  /// Configuration block for conditional branches to evaluate after the dialog code hook finishes successfully. See `success_conditional`.
  final V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditional? successConditional;
  /// Configuration block for the next step the bot runs after the dialog code hook finishes successfully. See `success_next_step`.
  final V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessNextStep? successNextStep;
  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See `success_response`.
  final V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponse? successResponse;
  /// Configuration block for conditional branches to evaluate if the code hook times out. See `timeout_conditional`.
  final V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditional? timeoutConditional;
  /// Configuration block for the next step that the bot runs when the code hook times out. See `timeout_next_step`.
  final V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStep? timeoutNextStep;
  /// Configuration block for a list of message groups that Amazon Lex uses to respond the user input. See `timeout_response`.
  final V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponse? timeoutResponse;

  /// Creates a new [V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecification].
  /// [failureConditional] Configuration block for conditional branches to evaluate after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed.
  /// [failureNextStep] Configuration block for the next step the bot runs after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed . See `failure_next_step`.
  /// [failureResponse] Configuration block for message groups that Amazon Lex uses to respond the user input. See `failure_response`.
  /// [successConditional] Configuration block for conditional branches to evaluate after the dialog code hook finishes successfully. See `success_conditional`.
  /// [successNextStep] Configuration block for the next step the bot runs after the dialog code hook finishes successfully. See `success_next_step`.
  /// [successResponse] Configuration block for message groups that Amazon Lex uses to respond the user input. See `success_response`.
  /// [timeoutConditional] Configuration block for conditional branches to evaluate if the code hook times out. See `timeout_conditional`.
  /// [timeoutNextStep] Configuration block for the next step that the bot runs when the code hook times out. See `timeout_next_step`.
  /// [timeoutResponse] Configuration block for a list of message groups that Amazon Lex uses to respond the user input. See `timeout_response`.
  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecification({
    this.failureConditional,
    this.failureNextStep,
    this.failureResponse,
    this.successConditional,
    this.successNextStep,
    this.successResponse,
    this.timeoutConditional,
    this.timeoutNextStep,
    this.timeoutResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureConditional': ?failureConditional == null ? null : failureConditional!.toMap(),
      'failureNextStep': ?failureNextStep == null ? null : failureNextStep!.toMap(),
      'failureResponse': ?failureResponse == null ? null : failureResponse!.toMap(),
      'successConditional': ?successConditional == null ? null : successConditional!.toMap(),
      'successNextStep': ?successNextStep == null ? null : successNextStep!.toMap(),
      'successResponse': ?successResponse == null ? null : successResponse!.toMap(),
      'timeoutConditional': ?timeoutConditional == null ? null : timeoutConditional!.toMap(),
      'timeoutNextStep': ?timeoutNextStep == null ? null : timeoutNextStep!.toMap(),
      'timeoutResponse': ?timeoutResponse == null ? null : timeoutResponse!.toMap(),
    };
  }

  factory V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecification(
      failureConditional: map['failureConditional'] == null ? null : V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureConditional.fromMap((map['failureConditional'] as Map).cast<String, dynamic>()),
      failureNextStep: map['failureNextStep'] == null ? null : V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureNextStep.fromMap((map['failureNextStep'] as Map).cast<String, dynamic>()),
      failureResponse: map['failureResponse'] == null ? null : V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponse.fromMap((map['failureResponse'] as Map).cast<String, dynamic>()),
      successConditional: map['successConditional'] == null ? null : V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditional.fromMap((map['successConditional'] as Map).cast<String, dynamic>()),
      successNextStep: map['successNextStep'] == null ? null : V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessNextStep.fromMap((map['successNextStep'] as Map).cast<String, dynamic>()),
      successResponse: map['successResponse'] == null ? null : V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponse.fromMap((map['successResponse'] as Map).cast<String, dynamic>()),
      timeoutConditional: map['timeoutConditional'] == null ? null : V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditional.fromMap((map['timeoutConditional'] as Map).cast<String, dynamic>()),
      timeoutNextStep: map['timeoutNextStep'] == null ? null : V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStep.fromMap((map['timeoutNextStep'] as Map).cast<String, dynamic>()),
      timeoutResponse: map['timeoutResponse'] == null ? null : V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponse.fromMap((map['timeoutResponse'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_conditional/v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_conditional.dart';
import '../v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_next_step/v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_next_step.dart';
import '../v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_response/v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_response.dart';
import '../v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_conditional/v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_conditional.dart';
import '../v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_next_step/v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_next_step.dart';
import '../v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_response/v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_response.dart';
import '../v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_timeout_conditional/v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_timeout_conditional.dart';
import '../v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_timeout_next_step/v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_timeout_next_step.dart';
import '../v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_timeout_response/v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_timeout_response.dart';

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecification {
  /// Configuration block for conditional branches to evaluate after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditional?
      failureConditional;

  /// Configuration block for the next step the bot runs after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed . See `failure_next_step`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStep?
      failureNextStep;

  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See `failure_response`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponse?
      failureResponse;

  /// Configuration block for conditional branches to evaluate after the dialog code hook finishes successfully. See `success_conditional`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditional?
      successConditional;

  /// Configuration block for the next step the bot runs after the dialog code hook finishes successfully. See `success_next_step`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStep?
      successNextStep;

  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See `success_response`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponse?
      successResponse;

  /// Configuration block for conditional branches to evaluate if the code hook times out. See `timeout_conditional`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditional?
      timeoutConditional;

  /// Configuration block for the next step that the bot runs when the code hook times out. See `timeout_next_step`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStep?
      timeoutNextStep;

  /// Configuration block for a list of message groups that Amazon Lex uses to respond the user input. See `timeout_response`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponse?
      timeoutResponse;

  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecification({
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
    final map = <String, dynamic>{};
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
    final successConditionalValue = successConditional;
    if (successConditionalValue != null) {
      map['successConditional'] = successConditionalValue.toMap();
    }
    final successNextStepValue = successNextStep;
    if (successNextStepValue != null) {
      map['successNextStep'] = successNextStepValue.toMap();
    }
    final successResponseValue = successResponse;
    if (successResponseValue != null) {
      map['successResponse'] = successResponseValue.toMap();
    }
    final timeoutConditionalValue = timeoutConditional;
    if (timeoutConditionalValue != null) {
      map['timeoutConditional'] = timeoutConditionalValue.toMap();
    }
    final timeoutNextStepValue = timeoutNextStep;
    if (timeoutNextStepValue != null) {
      map['timeoutNextStep'] = timeoutNextStepValue.toMap();
    }
    final timeoutResponseValue = timeoutResponse;
    if (timeoutResponseValue != null) {
      map['timeoutResponse'] = timeoutResponseValue.toMap();
    }
    return map;
  }

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecification(
      failureConditional: map['failureConditional'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditional
              .fromMap(
                  (map['failureConditional'] as Map).cast<String, dynamic>()),
      failureNextStep: map['failureNextStep'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStep
              .fromMap((map['failureNextStep'] as Map).cast<String, dynamic>()),
      failureResponse: map['failureResponse'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponse
              .fromMap((map['failureResponse'] as Map).cast<String, dynamic>()),
      successConditional: map['successConditional'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditional
              .fromMap(
                  (map['successConditional'] as Map).cast<String, dynamic>()),
      successNextStep: map['successNextStep'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStep
              .fromMap((map['successNextStep'] as Map).cast<String, dynamic>()),
      successResponse: map['successResponse'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponse
              .fromMap((map['successResponse'] as Map).cast<String, dynamic>()),
      timeoutConditional: map['timeoutConditional'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditional
              .fromMap(
                  (map['timeoutConditional'] as Map).cast<String, dynamic>()),
      timeoutNextStep: map['timeoutNextStep'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStep
              .fromMap((map['timeoutNextStep'] as Map).cast<String, dynamic>()),
      timeoutResponse: map['timeoutResponse'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponse
              .fromMap((map['timeoutResponse'] as Map).cast<String, dynamic>()),
    );
  }
}

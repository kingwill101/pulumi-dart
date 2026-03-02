// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_conditional.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_next_step.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_failure_response.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_conditional.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_next_step.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_success_response.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_timeout_conditional.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_timeout_next_step.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_timeout_response.dart';

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecification {
  /// Configuration block for conditional branches to evaluate after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditional>? failureConditional;
  /// Configuration block for the next step the bot runs after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed . See `failure_next_step`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStep>? failureNextStep;
  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See `failure_response`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponse>? failureResponse;
  /// Configuration block for conditional branches to evaluate after the dialog code hook finishes successfully. See `success_conditional`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditional>? successConditional;
  /// Configuration block for the next step the bot runs after the dialog code hook finishes successfully. See `success_next_step`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStep>? successNextStep;
  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See `success_response`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponse>? successResponse;
  /// Configuration block for conditional branches to evaluate if the code hook times out. See `timeout_conditional`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditional>? timeoutConditional;
  /// Configuration block for the next step that the bot runs when the code hook times out. See `timeout_next_step`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStep>? timeoutNextStep;
  /// Configuration block for a list of message groups that Amazon Lex uses to respond the user input. See `timeout_response`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponse>? timeoutResponse;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecification].
  /// [failureConditional] Configuration block for conditional branches to evaluate after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed.
  /// [failureNextStep] Configuration block for the next step the bot runs after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed . See `failure_next_step`.
  /// [failureResponse] Configuration block for message groups that Amazon Lex uses to respond the user input. See `failure_response`.
  /// [successConditional] Configuration block for conditional branches to evaluate after the dialog code hook finishes successfully. See `success_conditional`.
  /// [successNextStep] Configuration block for the next step the bot runs after the dialog code hook finishes successfully. See `success_next_step`.
  /// [successResponse] Configuration block for message groups that Amazon Lex uses to respond the user input. See `success_response`.
  /// [timeoutConditional] Configuration block for conditional branches to evaluate if the code hook times out. See `timeout_conditional`.
  /// [timeoutNextStep] Configuration block for the next step that the bot runs when the code hook times out. See `timeout_next_step`.
  /// [timeoutResponse] Configuration block for a list of message groups that Amazon Lex uses to respond the user input. See `timeout_response`.
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
    return <String, dynamic>{
      'failureConditional': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditional, Map<String, dynamic>>(failureConditional, (value) => value.toMap()),
      'failureNextStep': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStep, Map<String, dynamic>>(failureNextStep, (value) => value.toMap()),
      'failureResponse': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponse, Map<String, dynamic>>(failureResponse, (value) => value.toMap()),
      'successConditional': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditional, Map<String, dynamic>>(successConditional, (value) => value.toMap()),
      'successNextStep': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStep, Map<String, dynamic>>(successNextStep, (value) => value.toMap()),
      'successResponse': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponse, Map<String, dynamic>>(successResponse, (value) => value.toMap()),
      'timeoutConditional': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditional, Map<String, dynamic>>(timeoutConditional, (value) => value.toMap()),
      'timeoutNextStep': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStep, Map<String, dynamic>>(timeoutNextStep, (value) => value.toMap()),
      'timeoutResponse': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponse, Map<String, dynamic>>(timeoutResponse, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecification(
      failureConditional: map['failureConditional'] == null ? null : ((V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditional.fromMap((map['failureConditional']! as Map).cast<String, dynamic>())).input()).input(),
      failureNextStep: map['failureNextStep'] == null ? null : ((V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStep.fromMap((map['failureNextStep']! as Map).cast<String, dynamic>())).input()).input(),
      failureResponse: map['failureResponse'] == null ? null : ((V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponse.fromMap((map['failureResponse']! as Map).cast<String, dynamic>())).input()).input(),
      successConditional: map['successConditional'] == null ? null : ((V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditional.fromMap((map['successConditional']! as Map).cast<String, dynamic>())).input()).input(),
      successNextStep: map['successNextStep'] == null ? null : ((V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStep.fromMap((map['successNextStep']! as Map).cast<String, dynamic>())).input()).input(),
      successResponse: map['successResponse'] == null ? null : ((V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponse.fromMap((map['successResponse']! as Map).cast<String, dynamic>())).input()).input(),
      timeoutConditional: map['timeoutConditional'] == null ? null : ((V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditional.fromMap((map['timeoutConditional']! as Map).cast<String, dynamic>())).input()).input(),
      timeoutNextStep: map['timeoutNextStep'] == null ? null : ((V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStep.fromMap((map['timeoutNextStep']! as Map).cast<String, dynamic>())).input()).input(),
      timeoutResponse: map['timeoutResponse'] == null ? null : ((V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponse.fromMap((map['timeoutResponse']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


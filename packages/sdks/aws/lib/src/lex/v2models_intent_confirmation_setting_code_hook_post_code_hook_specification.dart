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
  /// Configuration block for the next step the bot runs after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed . See `failureNextStep`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStep>? failureNextStep;
  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See `failureResponse`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponse>? failureResponse;
  /// Configuration block for conditional branches to evaluate after the dialog code hook finishes successfully. See `successConditional`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditional>? successConditional;
  /// Configuration block for the next step the bot runs after the dialog code hook finishes successfully. See `successNextStep`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStep>? successNextStep;
  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See `successResponse`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponse>? successResponse;
  /// Configuration block for conditional branches to evaluate if the code hook times out. See `timeoutConditional`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditional>? timeoutConditional;
  /// Configuration block for the next step that the bot runs when the code hook times out. See `timeoutNextStep`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStep>? timeoutNextStep;
  /// Configuration block for a list of message groups that Amazon Lex uses to respond the user input. See `timeoutResponse`.
  final pulumi.Input<V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponse>? timeoutResponse;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecification].
  /// [failureConditional] Configuration block for conditional branches to evaluate after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed.
  /// [failureNextStep] Configuration block for the next step the bot runs after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed . See `failureNextStep`.
  /// [failureResponse] Configuration block for message groups that Amazon Lex uses to respond the user input. See `failureResponse`.
  /// [successConditional] Configuration block for conditional branches to evaluate after the dialog code hook finishes successfully. See `successConditional`.
  /// [successNextStep] Configuration block for the next step the bot runs after the dialog code hook finishes successfully. See `successNextStep`.
  /// [successResponse] Configuration block for message groups that Amazon Lex uses to respond the user input. See `successResponse`.
  /// [timeoutConditional] Configuration block for conditional branches to evaluate if the code hook times out. See `timeoutConditional`.
  /// [timeoutNextStep] Configuration block for the next step that the bot runs when the code hook times out. See `timeoutNextStep`.
  /// [timeoutResponse] Configuration block for a list of message groups that Amazon Lex uses to respond the user input. See `timeoutResponse`.
  const V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecification({
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
      failureConditional: (() { final guardedValue = map['failureConditional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditional.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      failureNextStep: (() { final guardedValue = map['failureNextStep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureNextStep.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      failureResponse: (() { final guardedValue = map['failureResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      successConditional: (() { final guardedValue = map['successConditional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditional.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      successNextStep: (() { final guardedValue = map['successNextStep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessNextStep.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      successResponse: (() { final guardedValue = map['successResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeoutConditional: (() { final guardedValue = map['timeoutConditional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditional.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeoutNextStep: (() { final guardedValue = map['timeoutNextStep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutNextStep.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeoutResponse: (() { final guardedValue = map['timeoutResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

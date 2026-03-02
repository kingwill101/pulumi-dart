// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_conditional.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_next_step.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_response.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_conditional.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_next_step.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_response.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_timeout_conditional.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_timeout_next_step.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_timeout_response.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecification {
  /// Configuration block for conditional branches to evaluate after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed. See `failure_conditional`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditional>? failureConditional;
  /// Configuration block for the next step the bot runs after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed. See `failure_next_step`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStep>? failureNextStep;
  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See `failure_response`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponse>? failureResponse;
  /// Configuration block for conditional branches to evaluate after the dialog code hook finishes successfully. See `success_conditional`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional>? successConditional;
  /// Configuration block for the next step the bot runs after the dialog code hook finishes successfully. See `success_next_step`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep>? successNextStep;
  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See `success_response`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponse>? successResponse;
  /// Configuration block for conditional branches to evaluate if the code hook times out. See `timeout_conditional`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditional>? timeoutConditional;
  /// Configuration block for the next step that the bot runs when the code hook times out. See `timeout_next_step`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStep>? timeoutNextStep;
  /// Configuration block for a list of message groups that Amazon Lex uses to respond the user input. See `timeout_response`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponse>? timeoutResponse;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecification].
  /// [failureConditional] Configuration block for conditional branches to evaluate after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed. See `failure_conditional`.
  /// [failureNextStep] Configuration block for the next step the bot runs after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed. See `failure_next_step`.
  /// [failureResponse] Configuration block for message groups that Amazon Lex uses to respond the user input. See `failure_response`.
  /// [successConditional] Configuration block for conditional branches to evaluate after the dialog code hook finishes successfully. See `success_conditional`.
  /// [successNextStep] Configuration block for the next step the bot runs after the dialog code hook finishes successfully. See `success_next_step`.
  /// [successResponse] Configuration block for message groups that Amazon Lex uses to respond the user input. See `success_response`.
  /// [timeoutConditional] Configuration block for conditional branches to evaluate if the code hook times out. See `timeout_conditional`.
  /// [timeoutNextStep] Configuration block for the next step that the bot runs when the code hook times out. See `timeout_next_step`.
  /// [timeoutResponse] Configuration block for a list of message groups that Amazon Lex uses to respond the user input. See `timeout_response`.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecification({
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
      'failureConditional': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditional, Map<String, dynamic>>(failureConditional, (value) => value.toMap()),
      'failureNextStep': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStep, Map<String, dynamic>>(failureNextStep, (value) => value.toMap()),
      'failureResponse': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponse, Map<String, dynamic>>(failureResponse, (value) => value.toMap()),
      'successConditional': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional, Map<String, dynamic>>(successConditional, (value) => value.toMap()),
      'successNextStep': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep, Map<String, dynamic>>(successNextStep, (value) => value.toMap()),
      'successResponse': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponse, Map<String, dynamic>>(successResponse, (value) => value.toMap()),
      'timeoutConditional': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditional, Map<String, dynamic>>(timeoutConditional, (value) => value.toMap()),
      'timeoutNextStep': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStep, Map<String, dynamic>>(timeoutNextStep, (value) => value.toMap()),
      'timeoutResponse': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponse, Map<String, dynamic>>(timeoutResponse, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecification(
      failureConditional: map['failureConditional'] == null ? null : ((V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditional.fromMap((map['failureConditional']! as Map).cast<String, dynamic>())).input()).input(),
      failureNextStep: map['failureNextStep'] == null ? null : ((V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStep.fromMap((map['failureNextStep']! as Map).cast<String, dynamic>())).input()).input(),
      failureResponse: map['failureResponse'] == null ? null : ((V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponse.fromMap((map['failureResponse']! as Map).cast<String, dynamic>())).input()).input(),
      successConditional: map['successConditional'] == null ? null : ((V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional.fromMap((map['successConditional']! as Map).cast<String, dynamic>())).input()).input(),
      successNextStep: map['successNextStep'] == null ? null : ((V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep.fromMap((map['successNextStep']! as Map).cast<String, dynamic>())).input()).input(),
      successResponse: map['successResponse'] == null ? null : ((V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponse.fromMap((map['successResponse']! as Map).cast<String, dynamic>())).input()).input(),
      timeoutConditional: map['timeoutConditional'] == null ? null : ((V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditional.fromMap((map['timeoutConditional']! as Map).cast<String, dynamic>())).input()).input(),
      timeoutNextStep: map['timeoutNextStep'] == null ? null : ((V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStep.fromMap((map['timeoutNextStep']! as Map).cast<String, dynamic>())).input()).input(),
      timeoutResponse: map['timeoutResponse'] == null ? null : ((V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponse.fromMap((map['timeoutResponse']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


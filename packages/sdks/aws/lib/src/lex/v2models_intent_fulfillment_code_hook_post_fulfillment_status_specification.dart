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
  /// Configuration block for conditional branches to evaluate after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed. See `failureConditional`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditional?>? failureConditional;
  /// Configuration block for the next step the bot runs after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed. See `failureNextStep`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStep?>? failureNextStep;
  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See `failureResponse`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponse?>? failureResponse;
  /// Configuration block for conditional branches to evaluate after the dialog code hook finishes successfully. See `successConditional`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional?>? successConditional;
  /// Configuration block for the next step the bot runs after the dialog code hook finishes successfully. See `successNextStep`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep?>? successNextStep;
  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See `successResponse`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponse?>? successResponse;
  /// Configuration block for conditional branches to evaluate if the code hook times out. See `timeoutConditional`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditional?>? timeoutConditional;
  /// Configuration block for the next step that the bot runs when the code hook times out. See `timeoutNextStep`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStep?>? timeoutNextStep;
  /// Configuration block for a list of message groups that Amazon Lex uses to respond the user input. See `timeoutResponse`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponse?>? timeoutResponse;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecification].
  /// [failureConditional] Configuration block for conditional branches to evaluate after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed. See `failureConditional`.
  /// [failureNextStep] Configuration block for the next step the bot runs after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed. See `failureNextStep`.
  /// [failureResponse] Configuration block for message groups that Amazon Lex uses to respond the user input. See `failureResponse`.
  /// [successConditional] Configuration block for conditional branches to evaluate after the dialog code hook finishes successfully. See `successConditional`.
  /// [successNextStep] Configuration block for the next step the bot runs after the dialog code hook finishes successfully. See `successNextStep`.
  /// [successResponse] Configuration block for message groups that Amazon Lex uses to respond the user input. See `successResponse`.
  /// [timeoutConditional] Configuration block for conditional branches to evaluate if the code hook times out. See `timeoutConditional`.
  /// [timeoutNextStep] Configuration block for the next step that the bot runs when the code hook times out. See `timeoutNextStep`.
  /// [timeoutResponse] Configuration block for a list of message groups that Amazon Lex uses to respond the user input. See `timeoutResponse`.
  const V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecification({
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
      failureConditional: (() { final guardedValue = map['failureConditional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditional.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      failureNextStep: (() { final guardedValue = map['failureNextStep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStep.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      failureResponse: (() { final guardedValue = map['failureResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      successConditional: (() { final guardedValue = map['successConditional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      successNextStep: (() { final guardedValue = map['successNextStep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      successResponse: (() { final guardedValue = map['successResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeoutConditional: (() { final guardedValue = map['timeoutConditional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditional.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeoutNextStep: (() { final guardedValue = map['timeoutNextStep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStep.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeoutResponse: (() { final guardedValue = map['timeoutResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

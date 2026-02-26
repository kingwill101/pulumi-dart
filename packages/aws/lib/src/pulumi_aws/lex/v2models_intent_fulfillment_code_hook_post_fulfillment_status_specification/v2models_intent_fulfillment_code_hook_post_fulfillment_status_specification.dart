// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_conditional/v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_conditional.dart';
import '../v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_next_step/v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_next_step.dart';
import '../v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_response/v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_response.dart';
import '../v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_conditional/v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_conditional.dart';
import '../v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_next_step/v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_next_step.dart';
import '../v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_response/v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_response.dart';
import '../v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_timeout_conditional/v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_timeout_conditional.dart';
import '../v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_timeout_next_step/v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_timeout_next_step.dart';
import '../v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_timeout_response/v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_timeout_response.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecification {
  /// Configuration block for conditional branches to evaluate after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed. See <span pulumi-lang-nodejs="`failureConditional`" pulumi-lang-dotnet="`FailureConditional`" pulumi-lang-go="`failureConditional`" pulumi-lang-python="`failure_conditional`" pulumi-lang-yaml="`failureConditional`" pulumi-lang-java="`failureConditional`">`failure_conditional`</span>.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditional?
      failureConditional;

  /// Configuration block for the next step the bot runs after the dialog code hook throws an exception or returns with the State field of the Intent object set to Failed. See <span pulumi-lang-nodejs="`failureNextStep`" pulumi-lang-dotnet="`FailureNextStep`" pulumi-lang-go="`failureNextStep`" pulumi-lang-python="`failure_next_step`" pulumi-lang-yaml="`failureNextStep`" pulumi-lang-java="`failureNextStep`">`failure_next_step`</span>.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStep?
      failureNextStep;

  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See <span pulumi-lang-nodejs="`failureResponse`" pulumi-lang-dotnet="`FailureResponse`" pulumi-lang-go="`failureResponse`" pulumi-lang-python="`failure_response`" pulumi-lang-yaml="`failureResponse`" pulumi-lang-java="`failureResponse`">`failure_response`</span>.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponse?
      failureResponse;

  /// Configuration block for conditional branches to evaluate after the dialog code hook finishes successfully. See <span pulumi-lang-nodejs="`successConditional`" pulumi-lang-dotnet="`SuccessConditional`" pulumi-lang-go="`successConditional`" pulumi-lang-python="`success_conditional`" pulumi-lang-yaml="`successConditional`" pulumi-lang-java="`successConditional`">`success_conditional`</span>.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional?
      successConditional;

  /// Configuration block for the next step the bot runs after the dialog code hook finishes successfully. See <span pulumi-lang-nodejs="`successNextStep`" pulumi-lang-dotnet="`SuccessNextStep`" pulumi-lang-go="`successNextStep`" pulumi-lang-python="`success_next_step`" pulumi-lang-yaml="`successNextStep`" pulumi-lang-java="`successNextStep`">`success_next_step`</span>.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep?
      successNextStep;

  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See <span pulumi-lang-nodejs="`successResponse`" pulumi-lang-dotnet="`SuccessResponse`" pulumi-lang-go="`successResponse`" pulumi-lang-python="`success_response`" pulumi-lang-yaml="`successResponse`" pulumi-lang-java="`successResponse`">`success_response`</span>.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponse?
      successResponse;

  /// Configuration block for conditional branches to evaluate if the code hook times out. See <span pulumi-lang-nodejs="`timeoutConditional`" pulumi-lang-dotnet="`TimeoutConditional`" pulumi-lang-go="`timeoutConditional`" pulumi-lang-python="`timeout_conditional`" pulumi-lang-yaml="`timeoutConditional`" pulumi-lang-java="`timeoutConditional`">`timeout_conditional`</span>.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditional?
      timeoutConditional;

  /// Configuration block for the next step that the bot runs when the code hook times out. See <span pulumi-lang-nodejs="`timeoutNextStep`" pulumi-lang-dotnet="`TimeoutNextStep`" pulumi-lang-go="`timeoutNextStep`" pulumi-lang-python="`timeout_next_step`" pulumi-lang-yaml="`timeoutNextStep`" pulumi-lang-java="`timeoutNextStep`">`timeout_next_step`</span>.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStep?
      timeoutNextStep;

  /// Configuration block for a list of message groups that Amazon Lex uses to respond the user input. See <span pulumi-lang-nodejs="`timeoutResponse`" pulumi-lang-dotnet="`TimeoutResponse`" pulumi-lang-go="`timeoutResponse`" pulumi-lang-python="`timeout_response`" pulumi-lang-yaml="`timeoutResponse`" pulumi-lang-java="`timeoutResponse`">`timeout_response`</span>.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponse?
      timeoutResponse;

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

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecification(
      failureConditional: map['failureConditional'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditional
              .fromMap(
                  (map['failureConditional'] as Map).cast<String, dynamic>()),
      failureNextStep: map['failureNextStep'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStep
              .fromMap((map['failureNextStep'] as Map).cast<String, dynamic>()),
      failureResponse: map['failureResponse'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureResponse
              .fromMap((map['failureResponse'] as Map).cast<String, dynamic>()),
      successConditional: map['successConditional'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditional
              .fromMap(
                  (map['successConditional'] as Map).cast<String, dynamic>()),
      successNextStep: map['successNextStep'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep
              .fromMap((map['successNextStep'] as Map).cast<String, dynamic>()),
      successResponse: map['successResponse'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessResponse
              .fromMap((map['successResponse'] as Map).cast<String, dynamic>()),
      timeoutConditional: map['timeoutConditional'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditional
              .fromMap(
                  (map['timeoutConditional'] as Map).cast<String, dynamic>()),
      timeoutNextStep: map['timeoutNextStep'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutNextStep
              .fromMap((map['timeoutNextStep'] as Map).cast<String, dynamic>()),
      timeoutResponse: map['timeoutResponse'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutResponse
              .fromMap((map['timeoutResponse'] as Map).cast<String, dynamic>()),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_conditional_default_branch_next_step.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_conditional_default_branch_response.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranch {
  /// Configuration block for the next step in the conversation. See `next_step`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStep?
  nextStep;

  /// Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponse?
  response;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranch].
  /// [nextStep] Configuration block for the next step in the conversation. See `next_step`.
  /// [response] Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranch({
    this.nextStep,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextStep': ?nextStep == null ? null : nextStep!.toMap(),
      'response': ?response == null ? null : response!.toMap(),
    };
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranch.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranch(
      nextStep: map['nextStep'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStep.fromMap(
              (map['nextStep'] as Map).cast<String, dynamic>(),
            ),
      response: map['response'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchResponse.fromMap(
              (map['response'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

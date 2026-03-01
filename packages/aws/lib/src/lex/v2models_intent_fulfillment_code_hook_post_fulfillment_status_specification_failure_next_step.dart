// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_next_step_dialog_action.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_next_step_intent.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStep {
  /// Configuration block for action that the bot executes at runtime when the conversation reaches this step. See `dialog_action`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStepDialogAction?
  dialogAction;

  /// Configuration block for override settings to configure the intent state. See `intent`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStepIntent?
  intent;

  /// Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  final Map<String, String>? sessionAttributes;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStep].
  /// [dialogAction] Configuration block for action that the bot executes at runtime when the conversation reaches this step. See `dialog_action`.
  /// [intent] Configuration block for override settings to configure the intent state. See `intent`.
  /// [sessionAttributes] Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStep({
    this.dialogAction,
    this.intent,
    this.sessionAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dialogAction': ?dialogAction == null ? null : dialogAction!.toMap(),
      'intent': ?intent == null ? null : intent!.toMap(),
      'sessionAttributes': ?sessionAttributes,
    };
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStep.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStep(
      dialogAction: map['dialogAction'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStepDialogAction.fromMap(
              (map['dialogAction'] as Map).cast<String, dynamic>(),
            ),
      intent: map['intent'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureNextStepIntent.fromMap(
              (map['intent'] as Map).cast<String, dynamic>(),
            ),
      sessionAttributes: map['sessionAttributes'] == null
          ? null
          : (map['sessionAttributes'] as Map).cast<String, String>(),
    );
  }
}

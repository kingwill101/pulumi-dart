// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_next_step_dialog_action.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_next_step_intent.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep {
  /// Configuration block for action that the bot executes at runtime when the conversation reaches this step. See `dialog_action`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepDialogAction?
  dialogAction;

  /// Configuration block for override settings to configure the intent state. See `intent`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntent?
  intent;

  /// Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  final Map<String, String>? sessionAttributes;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep].
  /// [dialogAction] Configuration block for action that the bot executes at runtime when the conversation reaches this step. See `dialog_action`.
  /// [intent] Configuration block for override settings to configure the intent state. See `intent`.
  /// [sessionAttributes] Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep({
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

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep(
      dialogAction: map['dialogAction'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepDialogAction.fromMap(
              (map['dialogAction'] as Map).cast<String, dynamic>(),
            ),
      intent: map['intent'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntent.fromMap(
              (map['intent'] as Map).cast<String, dynamic>(),
            ),
      sessionAttributes: map['sessionAttributes'] == null
          ? null
          : (map['sessionAttributes'] as Map).cast<String, String>(),
    );
  }
}

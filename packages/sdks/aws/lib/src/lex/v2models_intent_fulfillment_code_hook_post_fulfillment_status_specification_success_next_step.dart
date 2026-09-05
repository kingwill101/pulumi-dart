// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_next_step_dialog_action.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_next_step_intent.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep {
  /// Configuration block for action that the bot executes at runtime when the conversation reaches this step. See `dialogAction`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepDialogAction?>? dialogAction;
  /// Configuration block for override settings to configure the intent state. See `intent`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntent?>? intent;
  /// Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  final pulumi.Input<Map<String, String>?>? sessionAttributes;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep].
  /// [dialogAction] Configuration block for action that the bot executes at runtime when the conversation reaches this step. See `dialogAction`.
  /// [intent] Configuration block for override settings to configure the intent state. See `intent`.
  /// [sessionAttributes] Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  const V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep({
    this.dialogAction,
    this.intent,
    this.sessionAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dialogAction': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepDialogAction, Map<String, dynamic>>(dialogAction, (value) => value.toMap()),
      'intent': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntent, Map<String, dynamic>>(intent, (value) => value.toMap()),
      'sessionAttributes': ?sessionAttributes,
    };
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStep(
      dialogAction: (() { final guardedValue = map['dialogAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepDialogAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intent: (() { final guardedValue = map['intent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sessionAttributes: (() { final guardedValue = map['sessionAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_conditional_default_branch_next_step_dialog_action.dart';
import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_failure_conditional_default_branch_next_step_intent.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStep {
  /// Configuration block for action that the bot executes at runtime when the conversation reaches this step. See `dialogAction`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepDialogAction?>? dialogAction;
  /// Configuration block for override settings to configure the intent state. See `intent`.
  final pulumi.Input<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntent?>? intent;
  /// Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  final pulumi.Input<Map<String, String>?>? sessionAttributes;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStep].
  /// [dialogAction] Configuration block for action that the bot executes at runtime when the conversation reaches this step. See `dialogAction`.
  /// [intent] Configuration block for override settings to configure the intent state. See `intent`.
  /// [sessionAttributes] Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  const V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStep({
    this.dialogAction,
    this.intent,
    this.sessionAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dialogAction': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepDialogAction, Map<String, dynamic>>(dialogAction, (value) => value.toMap()),
      'intent': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntent, Map<String, dynamic>>(intent, (value) => value.toMap()),
      'sessionAttributes': ?sessionAttributes,
    };
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStep.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStep(
      dialogAction: (() { final guardedValue = map['dialogAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepDialogAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intent: (() { final guardedValue = map['intent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalDefaultBranchNextStepIntent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sessionAttributes: (() { final guardedValue = map['sessionAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

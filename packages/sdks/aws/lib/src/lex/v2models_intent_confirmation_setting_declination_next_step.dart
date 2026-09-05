// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_declination_next_step_dialog_action.dart';
import 'v2models_intent_confirmation_setting_declination_next_step_intent.dart';

class V2modelsIntentConfirmationSettingDeclinationNextStep {
  /// Configuration block for action that the bot executes at runtime when the conversation reaches this step. See `dialogAction`.
  final pulumi.Input<V2modelsIntentConfirmationSettingDeclinationNextStepDialogAction?>? dialogAction;
  /// Configuration block for override settings to configure the intent state. See `intent`.
  final pulumi.Input<V2modelsIntentConfirmationSettingDeclinationNextStepIntent?>? intent;
  /// Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  final pulumi.Input<Map<String, String>?>? sessionAttributes;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationNextStep].
  /// [dialogAction] Configuration block for action that the bot executes at runtime when the conversation reaches this step. See `dialogAction`.
  /// [intent] Configuration block for override settings to configure the intent state. See `intent`.
  /// [sessionAttributes] Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  const V2modelsIntentConfirmationSettingDeclinationNextStep({
    this.dialogAction,
    this.intent,
    this.sessionAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dialogAction': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingDeclinationNextStepDialogAction, Map<String, dynamic>>(dialogAction, (value) => value.toMap()),
      'intent': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingDeclinationNextStepIntent, Map<String, dynamic>>(intent, (value) => value.toMap()),
      'sessionAttributes': ?sessionAttributes,
    };
  }

  factory V2modelsIntentConfirmationSettingDeclinationNextStep.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingDeclinationNextStep(
      dialogAction: (() { final guardedValue = map['dialogAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingDeclinationNextStepDialogAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intent: (() { final guardedValue = map['intent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingDeclinationNextStepIntent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sessionAttributes: (() { final guardedValue = map['sessionAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

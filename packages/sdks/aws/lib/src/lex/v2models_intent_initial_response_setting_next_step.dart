// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_initial_response_setting_next_step_dialog_action.dart';
import 'v2models_intent_initial_response_setting_next_step_intent.dart';

class V2modelsIntentInitialResponseSettingNextStep {
  /// Configuration block for action that the bot executes at runtime when the conversation reaches this step. See `dialog_action`.
  final pulumi.Input<V2modelsIntentInitialResponseSettingNextStepDialogAction>?
  dialogAction;

  /// Configuration block for override settings to configure the intent state. See `intent`.
  final pulumi.Input<V2modelsIntentInitialResponseSettingNextStepIntent>?
  intent;

  /// Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  final pulumi.Input<Map<String, String>>? sessionAttributes;

  /// Creates a new [V2modelsIntentInitialResponseSettingNextStep].
  /// [dialogAction] Configuration block for action that the bot executes at runtime when the conversation reaches this step. See `dialog_action`.
  /// [intent] Configuration block for override settings to configure the intent state. See `intent`.
  /// [sessionAttributes] Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  V2modelsIntentInitialResponseSettingNextStep({
    this.dialogAction,
    this.intent,
    this.sessionAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dialogAction':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsIntentInitialResponseSettingNextStepDialogAction,
            Map<String, dynamic>
          >(dialogAction, (value) => value.toMap()),
      'intent':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsIntentInitialResponseSettingNextStepIntent,
            Map<String, dynamic>
          >(intent, (value) => value.toMap()),
      'sessionAttributes': ?sessionAttributes,
    };
  }

  factory V2modelsIntentInitialResponseSettingNextStep.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentInitialResponseSettingNextStep(
      dialogAction: (() {
        final guardedValue = map['dialogAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2modelsIntentInitialResponseSettingNextStepDialogAction.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      intent: (() {
        final guardedValue = map['intent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2modelsIntentInitialResponseSettingNextStepIntent.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sessionAttributes: (() {
        final guardedValue = map['sessionAttributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}

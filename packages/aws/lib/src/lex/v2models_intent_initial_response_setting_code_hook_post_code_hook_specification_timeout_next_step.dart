// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_timeout_next_step_dialog_action.dart';
import 'v2models_intent_initial_response_setting_code_hook_post_code_hook_specification_timeout_next_step_intent.dart';

class V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStep {
  /// Configuration block for action that the bot executes at runtime when the conversation reaches this step. See `dialog_action`.
  final V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepDialogAction?
      dialogAction;

  /// Configuration block for override settings to configure the intent state. See `intent`.
  final V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntent?
      intent;

  /// Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  final Map<String, String>? sessionAttributes;

  /// Creates a new [V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStep].
  /// [dialogAction] Configuration block for action that the bot executes at runtime when the conversation reaches this step. See `dialog_action`.
  /// [intent] Configuration block for override settings to configure the intent state. See `intent`.
  /// [sessionAttributes] Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStep({
    this.dialogAction,
    this.intent,
    this.sessionAttributes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dialogActionValue = dialogAction;
    if (dialogActionValue != null) {
      map['dialogAction'] = dialogActionValue.toMap();
    }
    final intentValue = intent;
    if (intentValue != null) {
      map['intent'] = intentValue.toMap();
    }
    final sessionAttributesValue = sessionAttributes;
    if (sessionAttributesValue != null) {
      map['sessionAttributes'] = sessionAttributesValue;
    }
    return map;
  }

  factory V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStep.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStep(
      dialogAction: map['dialogAction'] == null
          ? null
          : V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepDialogAction
              .fromMap((map['dialogAction'] as Map).cast<String, dynamic>()),
      intent: map['intent'] == null
          ? null
          : V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutNextStepIntent
              .fromMap((map['intent'] as Map).cast<String, dynamic>()),
      sessionAttributes: map['sessionAttributes'] == null
          ? null
          : (map['sessionAttributes'] as Map).cast<String, String>(),
    );
  }
}

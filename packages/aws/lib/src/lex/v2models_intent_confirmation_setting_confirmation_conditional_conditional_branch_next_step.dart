// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_confirmation_setting_confirmation_conditional_conditional_branch_next_step_dialog_action.dart';
import 'v2models_intent_confirmation_setting_confirmation_conditional_conditional_branch_next_step_intent.dart';

class V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStep {
  /// Configuration block for action that the bot executes at runtime when the conversation reaches this step. See `dialog_action`.
  final V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepDialogAction? dialogAction;
  /// Configuration block for override settings to configure the intent state. See `intent`.
  final V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntent? intent;
  /// Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  final Map<String, String>? sessionAttributes;

  /// Creates a new [V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStep].
  /// [dialogAction] Configuration block for action that the bot executes at runtime when the conversation reaches this step. See `dialog_action`.
  /// [intent] Configuration block for override settings to configure the intent state. See `intent`.
  /// [sessionAttributes] Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStep({
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

  factory V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStep.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStep(
      dialogAction: map['dialogAction'] == null ? null : V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepDialogAction.fromMap((map['dialogAction'] as Map).cast<String, dynamic>()),
      intent: map['intent'] == null ? null : V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchNextStepIntent.fromMap((map['intent'] as Map).cast<String, dynamic>()),
      sessionAttributes: map['sessionAttributes'] == null ? null : (map['sessionAttributes'] as Map).cast<String, String>(),
    );
  }
}


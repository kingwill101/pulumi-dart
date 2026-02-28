// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_timeout_conditional_conditional_branch_next_step_dialog_action.dart';
import 'v2models_intent_confirmation_setting_code_hook_post_code_hook_specification_timeout_conditional_conditional_branch_next_step_intent.dart';

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStep {
  /// Configuration block for action that the bot executes at runtime when the conversation reaches this step. See `dialog_action`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepDialogAction?
      dialogAction;

  /// Configuration block for override settings to configure the intent state. See `intent`.
  final V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntent?
      intent;

  /// Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  final Map<String, String>? sessionAttributes;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStep].
  /// [dialogAction] Configuration block for action that the bot executes at runtime when the conversation reaches this step. See `dialog_action`.
  /// [intent] Configuration block for override settings to configure the intent state. See `intent`.
  /// [sessionAttributes] Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStep({
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

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStep.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStep(
      dialogAction: map['dialogAction'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepDialogAction
              .fromMap((map['dialogAction'] as Map).cast<String, dynamic>()),
      intent: map['intent'] == null
          ? null
          : V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationTimeoutConditionalConditionalBranchNextStepIntent
              .fromMap((map['intent'] as Map).cast<String, dynamic>()),
      sessionAttributes: map['sessionAttributes'] == null
          ? null
          : (map['sessionAttributes'] as Map).cast<String, String>(),
    );
  }
}

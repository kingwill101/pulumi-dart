// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_intent_closing_setting_conditional_default_branch_next_step_dialog_action/v2models_intent_closing_setting_conditional_default_branch_next_step_dialog_action.dart';
import '../v2models_intent_closing_setting_conditional_default_branch_next_step_intent/v2models_intent_closing_setting_conditional_default_branch_next_step_intent.dart';

class V2modelsIntentClosingSettingConditionalDefaultBranchNextStep {
  /// Configuration block for action that the bot executes at runtime when the conversation reaches this step. See <span pulumi-lang-nodejs="`dialogAction`" pulumi-lang-dotnet="`DialogAction`" pulumi-lang-go="`dialogAction`" pulumi-lang-python="`dialog_action`" pulumi-lang-yaml="`dialogAction`" pulumi-lang-java="`dialogAction`">`dialog_action`</span>.
  final V2modelsIntentClosingSettingConditionalDefaultBranchNextStepDialogAction?
      dialogAction;

  /// Configuration block for override settings to configure the intent state. See <span pulumi-lang-nodejs="`intent`" pulumi-lang-dotnet="`Intent`" pulumi-lang-go="`intent`" pulumi-lang-python="`intent`" pulumi-lang-yaml="`intent`" pulumi-lang-java="`intent`">`intent`</span>.
  final V2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntent?
      intent;

  /// Map of key/value pairs representing session-specific context information. It contains application information passed between Amazon Lex and a client application.
  final Map<String, String>? sessionAttributes;

  V2modelsIntentClosingSettingConditionalDefaultBranchNextStep({
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

  factory V2modelsIntentClosingSettingConditionalDefaultBranchNextStep.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingConditionalDefaultBranchNextStep(
      dialogAction: map['dialogAction'] == null
          ? null
          : V2modelsIntentClosingSettingConditionalDefaultBranchNextStepDialogAction
              .fromMap((map['dialogAction'] as Map).cast<String, dynamic>()),
      intent: map['intent'] == null
          ? null
          : V2modelsIntentClosingSettingConditionalDefaultBranchNextStepIntent
              .fromMap((map['intent'] as Map).cast<String, dynamic>()),
      sessionAttributes: map['sessionAttributes'] == null
          ? null
          : (map['sessionAttributes'] as Map).cast<String, String>(),
    );
  }
}

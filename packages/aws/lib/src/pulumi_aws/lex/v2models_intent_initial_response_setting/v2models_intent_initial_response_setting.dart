// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_intent_initial_response_setting_code_hook/v2models_intent_initial_response_setting_code_hook.dart';
import '../v2models_intent_initial_response_setting_conditional/v2models_intent_initial_response_setting_conditional.dart';
import '../v2models_intent_initial_response_setting_initial_response/v2models_intent_initial_response_setting_initial_response.dart';
import '../v2models_intent_initial_response_setting_next_step/v2models_intent_initial_response_setting_next_step.dart';

class V2modelsIntentInitialResponseSetting {
  /// Configuration block for the dialog code hook that is called by Amazon Lex at a step of the conversation. See <span pulumi-lang-nodejs="`codeHook`" pulumi-lang-dotnet="`CodeHook`" pulumi-lang-go="`codeHook`" pulumi-lang-python="`code_hook`" pulumi-lang-yaml="`codeHook`" pulumi-lang-java="`codeHook`">`code_hook`</span>.
  final V2modelsIntentInitialResponseSettingCodeHook? codeHook;

  /// Configuration block for conditional branches. Branches are evaluated in the order that they are entered in the list. The first branch with a condition that evaluates to true is executed. The last branch in the list is the default branch. The default branch should not have any condition expression. The default branch is executed if no other branch has a matching condition. See <span pulumi-lang-nodejs="`conditional`" pulumi-lang-dotnet="`Conditional`" pulumi-lang-go="`conditional`" pulumi-lang-python="`conditional`" pulumi-lang-yaml="`conditional`" pulumi-lang-java="`conditional`">`conditional`</span>.
  final V2modelsIntentInitialResponseSettingConditional? conditional;

  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See <span pulumi-lang-nodejs="`initialResponse`" pulumi-lang-dotnet="`InitialResponse`" pulumi-lang-go="`initialResponse`" pulumi-lang-python="`initial_response`" pulumi-lang-yaml="`initialResponse`" pulumi-lang-java="`initialResponse`">`initial_response`</span>.
  final V2modelsIntentInitialResponseSettingInitialResponse? initialResponse;

  /// Configuration block for the next step in the conversation. See <span pulumi-lang-nodejs="`nextStep`" pulumi-lang-dotnet="`NextStep`" pulumi-lang-go="`nextStep`" pulumi-lang-python="`next_step`" pulumi-lang-yaml="`nextStep`" pulumi-lang-java="`nextStep`">`next_step`</span>.
  final V2modelsIntentInitialResponseSettingNextStep? nextStep;

  V2modelsIntentInitialResponseSetting({
    this.codeHook,
    this.conditional,
    this.initialResponse,
    this.nextStep,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeHookValue = codeHook;
    if (codeHookValue != null) {
      map['codeHook'] = codeHookValue.toMap();
    }
    final conditionalValue = conditional;
    if (conditionalValue != null) {
      map['conditional'] = conditionalValue.toMap();
    }
    final initialResponseValue = initialResponse;
    if (initialResponseValue != null) {
      map['initialResponse'] = initialResponseValue.toMap();
    }
    final nextStepValue = nextStep;
    if (nextStepValue != null) {
      map['nextStep'] = nextStepValue.toMap();
    }
    return map;
  }

  factory V2modelsIntentInitialResponseSetting.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSetting(
      codeHook: map['codeHook'] == null
          ? null
          : V2modelsIntentInitialResponseSettingCodeHook.fromMap(
              (map['codeHook'] as Map).cast<String, dynamic>()),
      conditional: map['conditional'] == null
          ? null
          : V2modelsIntentInitialResponseSettingConditional.fromMap(
              (map['conditional'] as Map).cast<String, dynamic>()),
      initialResponse: map['initialResponse'] == null
          ? null
          : V2modelsIntentInitialResponseSettingInitialResponse.fromMap(
              (map['initialResponse'] as Map).cast<String, dynamic>()),
      nextStep: map['nextStep'] == null
          ? null
          : V2modelsIntentInitialResponseSettingNextStep.fromMap(
              (map['nextStep'] as Map).cast<String, dynamic>()),
    );
  }
}

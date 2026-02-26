// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_intent_closing_setting_closing_response/v2models_intent_closing_setting_closing_response.dart';
import '../v2models_intent_closing_setting_conditional/v2models_intent_closing_setting_conditional.dart';
import '../v2models_intent_closing_setting_next_step/v2models_intent_closing_setting_next_step.dart';

class V2modelsIntentClosingSetting {
  /// Whether an intent's closing response is used. When this field is false, the closing response isn't sent to the user. If the active field isn't specified, the default is true.
  final bool? active;

  /// Configuration block for response that Amazon Lex sends to the user when the intent is complete. See <span pulumi-lang-nodejs="`closingResponse`" pulumi-lang-dotnet="`ClosingResponse`" pulumi-lang-go="`closingResponse`" pulumi-lang-python="`closing_response`" pulumi-lang-yaml="`closingResponse`" pulumi-lang-java="`closingResponse`">`closing_response`</span>.
  final V2modelsIntentClosingSettingClosingResponse? closingResponse;

  /// Configuration block for list of conditional branches associated with the intent's closing response. These branches are executed when the <span pulumi-lang-nodejs="`nextStep`" pulumi-lang-dotnet="`NextStep`" pulumi-lang-go="`nextStep`" pulumi-lang-python="`next_step`" pulumi-lang-yaml="`nextStep`" pulumi-lang-java="`nextStep`">`next_step`</span> attribute is set to `EvalutateConditional`. See <span pulumi-lang-nodejs="`conditional`" pulumi-lang-dotnet="`Conditional`" pulumi-lang-go="`conditional`" pulumi-lang-python="`conditional`" pulumi-lang-yaml="`conditional`" pulumi-lang-java="`conditional`">`conditional`</span>.
  final V2modelsIntentClosingSettingConditional? conditional;

  /// Next step that the bot executes after playing the intent's closing response. See <span pulumi-lang-nodejs="`nextStep`" pulumi-lang-dotnet="`NextStep`" pulumi-lang-go="`nextStep`" pulumi-lang-python="`next_step`" pulumi-lang-yaml="`nextStep`" pulumi-lang-java="`nextStep`">`next_step`</span>.
  final V2modelsIntentClosingSettingNextStep? nextStep;

  V2modelsIntentClosingSetting({
    this.active,
    this.closingResponse,
    this.conditional,
    this.nextStep,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeValue = active;
    if (activeValue != null) {
      map['active'] = activeValue;
    }
    final closingResponseValue = closingResponse;
    if (closingResponseValue != null) {
      map['closingResponse'] = closingResponseValue.toMap();
    }
    final conditionalValue = conditional;
    if (conditionalValue != null) {
      map['conditional'] = conditionalValue.toMap();
    }
    final nextStepValue = nextStep;
    if (nextStepValue != null) {
      map['nextStep'] = nextStepValue.toMap();
    }
    return map;
  }

  factory V2modelsIntentClosingSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentClosingSetting(
      active: map['active'] == null ? null : map['active'] as bool,
      closingResponse: map['closingResponse'] == null
          ? null
          : V2modelsIntentClosingSettingClosingResponse.fromMap(
              (map['closingResponse'] as Map).cast<String, dynamic>()),
      conditional: map['conditional'] == null
          ? null
          : V2modelsIntentClosingSettingConditional.fromMap(
              (map['conditional'] as Map).cast<String, dynamic>()),
      nextStep: map['nextStep'] == null
          ? null
          : V2modelsIntentClosingSettingNextStep.fromMap(
              (map['nextStep'] as Map).cast<String, dynamic>()),
    );
  }
}

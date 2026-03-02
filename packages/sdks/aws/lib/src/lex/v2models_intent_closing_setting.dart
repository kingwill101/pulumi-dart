// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_closing_setting_closing_response.dart';
import 'v2models_intent_closing_setting_conditional.dart';
import 'v2models_intent_closing_setting_next_step.dart';

class V2modelsIntentClosingSetting {
  /// Whether an intent's closing response is used. When this field is false, the closing response isn't sent to the user. If the active field isn't specified, the default is true.
  final pulumi.Input<bool>? active;
  /// Configuration block for response that Amazon Lex sends to the user when the intent is complete. See `closing_response`.
  final pulumi.Input<V2modelsIntentClosingSettingClosingResponse>? closingResponse;
  /// Configuration block for list of conditional branches associated with the intent's closing response. These branches are executed when the `next_step` attribute is set to `EvalutateConditional`. See `conditional`.
  final pulumi.Input<V2modelsIntentClosingSettingConditional>? conditional;
  /// Next step that the bot executes after playing the intent's closing response. See `next_step`.
  final pulumi.Input<V2modelsIntentClosingSettingNextStep>? nextStep;

  /// Creates a new [V2modelsIntentClosingSetting].
  /// [active] Whether an intent's closing response is used. When this field is false, the closing response isn't sent to the user. If the active field isn't specified, the default is true.
  /// [closingResponse] Configuration block for response that Amazon Lex sends to the user when the intent is complete. See `closing_response`.
  /// [conditional] Configuration block for list of conditional branches associated with the intent's closing response. These branches are executed when the `next_step` attribute is set to `EvalutateConditional`. See `conditional`.
  /// [nextStep] Next step that the bot executes after playing the intent's closing response. See `next_step`.
  V2modelsIntentClosingSetting({
    this.active,
    this.closingResponse,
    this.conditional,
    this.nextStep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'closingResponse': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentClosingSettingClosingResponse, Map<String, dynamic>>(closingResponse, (value) => value.toMap()),
      'conditional': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentClosingSettingConditional, Map<String, dynamic>>(conditional, (value) => value.toMap()),
      'nextStep': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentClosingSettingNextStep, Map<String, dynamic>>(nextStep, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentClosingSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentClosingSetting(
      active: map['active'] == null ? null : (map['active'] as bool).input(),
      closingResponse: map['closingResponse'] == null ? null : (V2modelsIntentClosingSettingClosingResponse.fromMap((map['closingResponse'] as Map).cast<String, dynamic>())).input(),
      conditional: map['conditional'] == null ? null : (V2modelsIntentClosingSettingConditional.fromMap((map['conditional'] as Map).cast<String, dynamic>())).input(),
      nextStep: map['nextStep'] == null ? null : (V2modelsIntentClosingSettingNextStep.fromMap((map['nextStep'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


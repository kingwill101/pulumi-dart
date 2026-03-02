// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_initial_response_setting_code_hook.dart';
import 'v2models_intent_initial_response_setting_conditional.dart';
import 'v2models_intent_initial_response_setting_initial_response.dart';
import 'v2models_intent_initial_response_setting_next_step.dart';

class V2modelsIntentInitialResponseSetting {
  /// Configuration block for the dialog code hook that is called by Amazon Lex at a step of the conversation. See `code_hook`.
  final pulumi.Input<V2modelsIntentInitialResponseSettingCodeHook>? codeHook;
  /// Configuration block for conditional branches. Branches are evaluated in the order that they are entered in the list. The first branch with a condition that evaluates to true is executed. The last branch in the list is the default branch. The default branch should not have any condition expression. The default branch is executed if no other branch has a matching condition. See `conditional`.
  final pulumi.Input<V2modelsIntentInitialResponseSettingConditional>? conditional;
  /// Configuration block for message groups that Amazon Lex uses to respond the user input. See `initial_response`.
  final pulumi.Input<V2modelsIntentInitialResponseSettingInitialResponse>? initialResponse;
  /// Configuration block for the next step in the conversation. See `next_step`.
  final pulumi.Input<V2modelsIntentInitialResponseSettingNextStep>? nextStep;

  /// Creates a new [V2modelsIntentInitialResponseSetting].
  /// [codeHook] Configuration block for the dialog code hook that is called by Amazon Lex at a step of the conversation. See `code_hook`.
  /// [conditional] Configuration block for conditional branches. Branches are evaluated in the order that they are entered in the list. The first branch with a condition that evaluates to true is executed. The last branch in the list is the default branch. The default branch should not have any condition expression. The default branch is executed if no other branch has a matching condition. See `conditional`.
  /// [initialResponse] Configuration block for message groups that Amazon Lex uses to respond the user input. See `initial_response`.
  /// [nextStep] Configuration block for the next step in the conversation. See `next_step`.
  V2modelsIntentInitialResponseSetting({
    this.codeHook,
    this.conditional,
    this.initialResponse,
    this.nextStep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeHook': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentInitialResponseSettingCodeHook, Map<String, dynamic>>(codeHook, (value) => value.toMap()),
      'conditional': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentInitialResponseSettingConditional, Map<String, dynamic>>(conditional, (value) => value.toMap()),
      'initialResponse': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentInitialResponseSettingInitialResponse, Map<String, dynamic>>(initialResponse, (value) => value.toMap()),
      'nextStep': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentInitialResponseSettingNextStep, Map<String, dynamic>>(nextStep, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentInitialResponseSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSetting(
      codeHook: map['codeHook'] == null ? null : (V2modelsIntentInitialResponseSettingCodeHook.fromMap((map['codeHook'] as Map).cast<String, dynamic>())).input(),
      conditional: map['conditional'] == null ? null : (V2modelsIntentInitialResponseSettingConditional.fromMap((map['conditional'] as Map).cast<String, dynamic>())).input(),
      initialResponse: map['initialResponse'] == null ? null : (V2modelsIntentInitialResponseSettingInitialResponse.fromMap((map['initialResponse'] as Map).cast<String, dynamic>())).input(),
      nextStep: map['nextStep'] == null ? null : (V2modelsIntentInitialResponseSettingNextStep.fromMap((map['nextStep'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


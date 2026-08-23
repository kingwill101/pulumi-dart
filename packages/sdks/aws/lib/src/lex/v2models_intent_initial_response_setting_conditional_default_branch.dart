// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_initial_response_setting_conditional_default_branch_next_step.dart';
import 'v2models_intent_initial_response_setting_conditional_default_branch_response.dart';

class V2modelsIntentInitialResponseSettingConditionalDefaultBranch {
  /// Configuration block for the next step in the conversation. See `nextStep`.
  final pulumi.Input<V2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStep>? nextStep;
  /// Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  final pulumi.Input<V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponse>? response;

  /// Creates a new [V2modelsIntentInitialResponseSettingConditionalDefaultBranch].
  /// [nextStep] Configuration block for the next step in the conversation. See `nextStep`.
  /// [response] Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  const V2modelsIntentInitialResponseSettingConditionalDefaultBranch({
    this.nextStep,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextStep': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStep, Map<String, dynamic>>(nextStep, (value) => value.toMap()),
      'response': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponse, Map<String, dynamic>>(response, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentInitialResponseSettingConditionalDefaultBranch.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingConditionalDefaultBranch(
      nextStep: (() { final guardedValue = map['nextStep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStep.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      response: (() { final guardedValue = map['response']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

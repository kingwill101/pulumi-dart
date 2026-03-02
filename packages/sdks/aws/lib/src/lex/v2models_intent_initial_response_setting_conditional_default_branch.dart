// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_initial_response_setting_conditional_default_branch_next_step.dart';
import 'v2models_intent_initial_response_setting_conditional_default_branch_response.dart';

class V2modelsIntentInitialResponseSettingConditionalDefaultBranch {
  /// Configuration block for the next step in the conversation. See `next_step`.
  final pulumi.Input<V2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStep>? nextStep;
  /// Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  final pulumi.Input<V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponse>? response;

  /// Creates a new [V2modelsIntentInitialResponseSettingConditionalDefaultBranch].
  /// [nextStep] Configuration block for the next step in the conversation. See `next_step`.
  /// [response] Configuration block for a list of message groups that Amazon Lex uses to respond to the user input. See `response`.
  V2modelsIntentInitialResponseSettingConditionalDefaultBranch({
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
      nextStep: map['nextStep'] == null ? null : ((V2modelsIntentInitialResponseSettingConditionalDefaultBranchNextStep.fromMap((map['nextStep']! as Map).cast<String, dynamic>())).input()).input(),
      response: map['response'] == null ? null : ((V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponse.fromMap((map['response']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentPromptVariantInferenceConfigurationText {
  /// Maximum number of tokens to return in the response.
  final pulumi.Input<int>? maxTokens;

  /// List of strings that define sequences after which the model will stop generating.
  final pulumi.Input<List<String>>? stopSequences;

  /// Controls the randomness of the response. Choose a lower value for more predictable outputs and a higher value for more surprising outputs.
  final pulumi.Input<double>? temperature;

  /// Percentage of most-likely candidates that the model considers for the next token.
  final pulumi.Input<double>? topP;

  /// Creates a new [AgentPromptVariantInferenceConfigurationText].
  /// [maxTokens] Maximum number of tokens to return in the response.
  /// [stopSequences] List of strings that define sequences after which the model will stop generating.
  /// [temperature] Controls the randomness of the response. Choose a lower value for more predictable outputs and a higher value for more surprising outputs.
  /// [topP] Percentage of most-likely candidates that the model considers for the next token.
  AgentPromptVariantInferenceConfigurationText({
    this.maxTokens,
    this.stopSequences,
    this.temperature,
    this.topP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxTokens': ?maxTokens,
      'stopSequences': ?stopSequences,
      'temperature': ?temperature,
      'topP': ?topP,
    };
  }

  factory AgentPromptVariantInferenceConfigurationText.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentPromptVariantInferenceConfigurationText(
      maxTokens: (() {
        final guardedValue = map['maxTokens'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      stopSequences: (() {
        final guardedValue = map['stopSequences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      temperature: (() {
        final guardedValue = map['temperature'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      topP: (() {
        final guardedValue = map['topP'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}

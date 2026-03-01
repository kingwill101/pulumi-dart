// ignore_for_file: unused_element, unnecessary_cast

import 'agent_prompt_variant_inference_configuration_text.dart';

class AgentPromptVariantInferenceConfiguration {
  /// Contains inference configurations for the prompt variant. See Text Inference Configuration for more information.
  final AgentPromptVariantInferenceConfigurationText? text;

  /// Creates a new [AgentPromptVariantInferenceConfiguration].
  /// [text] Contains inference configurations for the prompt variant. See Text Inference Configuration for more information.
  AgentPromptVariantInferenceConfiguration({
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': ?text == null ? null : text!.toMap(),
    };
  }

  factory AgentPromptVariantInferenceConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantInferenceConfiguration(
      text: map['text'] == null ? null : AgentPromptVariantInferenceConfigurationText.fromMap((map['text'] as Map).cast<String, dynamic>()),
    );
  }
}


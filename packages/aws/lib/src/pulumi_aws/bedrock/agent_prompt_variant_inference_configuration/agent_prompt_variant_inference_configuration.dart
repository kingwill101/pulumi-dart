// ignore_for_file: unused_element, unnecessary_cast

import '../agent_prompt_variant_inference_configuration_text/agent_prompt_variant_inference_configuration_text.dart';

class AgentPromptVariantInferenceConfiguration {
  /// Contains inference configurations for the prompt variant. See Text Inference Configuration for more information.
  final AgentPromptVariantInferenceConfigurationText? text;

  AgentPromptVariantInferenceConfiguration({
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue.toMap();
    }
    return map;
  }

  factory AgentPromptVariantInferenceConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentPromptVariantInferenceConfiguration(
      text: map['text'] == null
          ? null
          : AgentPromptVariantInferenceConfigurationText.fromMap(
              (map['text'] as Map).cast<String, dynamic>()),
    );
  }
}

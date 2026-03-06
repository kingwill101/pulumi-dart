// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_inference_configuration_text.dart';

class AgentPromptVariantInferenceConfiguration {
  /// Contains inference configurations for the prompt variant. See Text Inference Configuration for more information.
  final pulumi.Input<AgentPromptVariantInferenceConfigurationText>? text;

  /// Creates a new [AgentPromptVariantInferenceConfiguration].
  /// [text] Contains inference configurations for the prompt variant. See Text Inference Configuration for more information.
  const AgentPromptVariantInferenceConfiguration({
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantInferenceConfigurationText, Map<String, dynamic>>(text, (value) => value.toMap()),
    };
  }

  factory AgentPromptVariantInferenceConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantInferenceConfiguration(
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPromptVariantInferenceConfigurationText.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


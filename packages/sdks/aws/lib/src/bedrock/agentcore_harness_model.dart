// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_model_bedrock_model_config.dart';
import 'agentcore_harness_model_gemini_model_config.dart';
import 'agentcore_harness_model_openai_model_config.dart';

class AgentcoreHarnessModel {
  /// Amazon Bedrock model configuration. See `bedrockModelConfig` Block below.
  final pulumi.Input<AgentcoreHarnessModelBedrockModelConfig?>? bedrockModelConfig;
  /// Gemini model configuration. See `geminiModelConfig` Block below.
  final pulumi.Input<AgentcoreHarnessModelGeminiModelConfig?>? geminiModelConfig;
  /// OpenAI model configuration. See `openaiModelConfig` Block below.
  final pulumi.Input<AgentcoreHarnessModelOpenaiModelConfig?>? openaiModelConfig;

  /// Creates a new [AgentcoreHarnessModel].
  /// [bedrockModelConfig] Amazon Bedrock model configuration. See `bedrockModelConfig` Block below.
  /// [geminiModelConfig] Gemini model configuration. See `geminiModelConfig` Block below.
  /// [openaiModelConfig] OpenAI model configuration. See `openaiModelConfig` Block below.
  const AgentcoreHarnessModel({
    this.bedrockModelConfig,
    this.geminiModelConfig,
    this.openaiModelConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bedrockModelConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessModelBedrockModelConfig, Map<String, dynamic>>(bedrockModelConfig, (value) => value.toMap()),
      'geminiModelConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessModelGeminiModelConfig, Map<String, dynamic>>(geminiModelConfig, (value) => value.toMap()),
      'openaiModelConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessModelOpenaiModelConfig, Map<String, dynamic>>(openaiModelConfig, (value) => value.toMap()),
    };
  }

  factory AgentcoreHarnessModel.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessModel(
      bedrockModelConfig: (() { final guardedValue = map['bedrockModelConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessModelBedrockModelConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      geminiModelConfig: (() { final guardedValue = map['geminiModelConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessModelGeminiModelConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openaiModelConfig: (() { final guardedValue = map['openaiModelConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessModelOpenaiModelConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

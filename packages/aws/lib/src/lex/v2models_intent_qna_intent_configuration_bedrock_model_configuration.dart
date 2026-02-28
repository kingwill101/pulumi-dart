// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_qna_intent_configuration_bedrock_model_configuration_guardrail.dart';

class V2modelsIntentQnaIntentConfigurationBedrockModelConfiguration {
  /// Custom prompt to use for the Bedrock model.
  final String? customPrompt;
  /// Configuration block for the guardrail to use with the Bedrock model. See `guardrail`.
  final V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail? guardrail;
  /// ARN of the Bedrock model to use.
  final String modelArn;
  /// Whether to enable tracing for the Bedrock model. Valid values are `ENABLED` and `DISABLED`.
  final String? traceStatus;

  /// Creates a new [V2modelsIntentQnaIntentConfigurationBedrockModelConfiguration].
  /// [customPrompt] Custom prompt to use for the Bedrock model.
  /// [guardrail] Configuration block for the guardrail to use with the Bedrock model. See `guardrail`.
  /// [modelArn] ARN of the Bedrock model to use.
  /// [traceStatus] Whether to enable tracing for the Bedrock model. Valid values are `ENABLED` and `DISABLED`.
  V2modelsIntentQnaIntentConfigurationBedrockModelConfiguration({
    this.customPrompt,
    this.guardrail,
    required this.modelArn,
    this.traceStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPrompt': ?customPrompt,
      'guardrail': ?guardrail == null ? null : guardrail!.toMap(),
      'modelArn': modelArn,
      'traceStatus': ?traceStatus,
    };
  }

  factory V2modelsIntentQnaIntentConfigurationBedrockModelConfiguration.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentQnaIntentConfigurationBedrockModelConfiguration(
      customPrompt: map['customPrompt'] == null ? null : map['customPrompt'] as String,
      guardrail: map['guardrail'] == null ? null : V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail.fromMap((map['guardrail'] as Map).cast<String, dynamic>()),
      modelArn: map['modelArn'] as String,
      traceStatus: map['traceStatus'] == null ? null : map['traceStatus'] as String,
    );
  }
}


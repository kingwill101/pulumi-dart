// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_qna_intent_configuration_bedrock_model_configuration_guardrail.dart';

class V2modelsIntentQnaIntentConfigurationBedrockModelConfiguration {
  /// Custom prompt to use for the Bedrock model.
  final pulumi.Input<String>? customPrompt;
  /// Configuration block for the guardrail to use with the Bedrock model. See `guardrail`.
  final pulumi.Input<V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail>? guardrail;
  /// ARN of the Bedrock model to use.
  final pulumi.Input<String> modelArn;
  /// Whether to enable tracing for the Bedrock model. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? traceStatus;

  /// Creates a new [V2modelsIntentQnaIntentConfigurationBedrockModelConfiguration].
  /// [customPrompt] Custom prompt to use for the Bedrock model.
  /// [guardrail] Configuration block for the guardrail to use with the Bedrock model. See `guardrail`.
  /// [modelArn] ARN of the Bedrock model to use.
  /// [traceStatus] Whether to enable tracing for the Bedrock model. Valid values are `ENABLED` and `DISABLED`.
  const V2modelsIntentQnaIntentConfigurationBedrockModelConfiguration({
    this.customPrompt,
    this.guardrail,
    required this.modelArn,
    this.traceStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPrompt': ?customPrompt,
      'guardrail': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail, Map<String, dynamic>>(guardrail, (value) => value.toMap()),
      'modelArn': modelArn,
      'traceStatus': ?traceStatus,
    };
  }

  factory V2modelsIntentQnaIntentConfigurationBedrockModelConfiguration.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentQnaIntentConfigurationBedrockModelConfiguration(
      customPrompt: (() { final guardedValue = map['customPrompt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guardrail: (() { final guardedValue = map['guardrail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modelArn: pulumi.Input.fromValue(map['modelArn'] as String),
      traceStatus: (() { final guardedValue = map['traceStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

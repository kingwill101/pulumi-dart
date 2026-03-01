// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail {
  /// Identifier of the guardrail.
  final String identifier;
  /// Version of the guardrail.
  final String version;

  /// Creates a new [V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail].
  /// [identifier] Identifier of the guardrail.
  /// [version] Version of the guardrail.
  V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail({
    required this.identifier,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
      'version': version,
    };
  }

  factory V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail(
      identifier: map['identifier'] as String,
      version: map['version'] as String,
    );
  }
}


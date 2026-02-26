// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail {
  /// Identifier of the guardrail.
  final String identifier;

  /// Version of the guardrail.
  final String version;

  V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail({
    required this.identifier,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifier'] = identifier;
    map['version'] = version;
    return map;
  }

  factory V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail(
      identifier: map['identifier'] as String,
      version: map['version'] as String,
    );
  }
}

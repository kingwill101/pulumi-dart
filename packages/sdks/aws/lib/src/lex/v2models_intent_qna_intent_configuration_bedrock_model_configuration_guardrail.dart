// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail {
  /// Identifier of the guardrail.
  final pulumi.Input<String> identifier;

  /// Version of the guardrail.
  final pulumi.Input<String> version;

  /// Creates a new [V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail].
  /// [identifier] Identifier of the guardrail.
  /// [version] Version of the guardrail.
  V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail({
    required this.identifier,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'identifier': identifier, 'version': version};
  }

  factory V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentQnaIntentConfigurationBedrockModelConfigurationGuardrail(
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Default AI model configuration
class DefaultModelResponse {
  /// Model name (e.g., gpt-5, claude-opus-4-5, claude-sonnet-4-5)
  final pulumi.Input<String>? name;
  /// AI provider name (e.g., MicrosoftFoundry, Anthropic)
  final pulumi.Input<String>? provider;

  /// Creates a new [DefaultModelResponse].
  /// [name] Model name (e.g., gpt-5, claude-opus-4-5, claude-sonnet-4-5)
  /// [provider] AI provider name (e.g., MicrosoftFoundry, Anthropic)
  const DefaultModelResponse({
    this.name,
    this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'provider': ?provider,
    };
  }

  factory DefaultModelResponse.fromMap(Map<String, dynamic> map) {
    return DefaultModelResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a component binding for a provider.
class BindingPropertiesResponse {
  /// Configuration values for the binding.
  final pulumi.Input<dynamic> config;
  /// Name of the provider.
  final pulumi.Input<String> provider;
  /// Role that the provider binds to with the component.
  final pulumi.Input<String> role;

  /// Creates a new [BindingPropertiesResponse].
  /// [config] Configuration values for the binding.
  /// [provider] Name of the provider.
  /// [role] Role that the provider binds to with the component.
  BindingPropertiesResponse({
    required this.config,
    required this.provider,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': config,
      'provider': provider,
      'role': role,
    };
  }

  factory BindingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BindingPropertiesResponse(
      config: pulumi.Input.fromValue(map['config']),
      provider: pulumi.Input.fromValue(map['provider'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}


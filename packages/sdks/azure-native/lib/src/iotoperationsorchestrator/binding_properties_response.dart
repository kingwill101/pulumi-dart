// ignore_for_file: unused_element, unnecessary_cast


/// Defines a component binding for a provider.
class BindingPropertiesResponse {
  /// Configuration values for the binding.
  final dynamic config;
  /// Name of the provider.
  final String provider;
  /// Role that the provider binds to with the component.
  final String role;

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
      config: map['config'],
      provider: map['provider'] as String,
      role: map['role'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// Defines a component binding for a provider.
class BindingProperties {
  /// Configuration values for the binding.
  final dynamic config;
  /// Name of the provider.
  final String provider;
  /// Role that the provider binds to with the component.
  final String role;

  /// Creates a new [BindingProperties].
  /// [config] Configuration values for the binding.
  /// [provider] Name of the provider.
  /// [role] Role that the provider binds to with the component.
  BindingProperties({
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

  factory BindingProperties.fromMap(Map<String, dynamic> map) {
    return BindingProperties(
      config: map['config'],
      provider: map['provider'] as String,
      role: map['role'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// IdentityServiceConfig is configuration for Identity Service which allows customers to use external identity providers with the K8S API
class IdentityServiceConfigContainerV1beta1 {
  /// Whether to enable the Identity Service component
  final bool? enabled;

  /// Creates a new [IdentityServiceConfigContainerV1beta1].
  /// [enabled] Whether to enable the Identity Service component
  IdentityServiceConfigContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory IdentityServiceConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return IdentityServiceConfigContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}


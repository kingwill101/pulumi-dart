// ignore_for_file: unused_element, unnecessary_cast

/// IdentityServiceConfig is configuration for Identity Service which allows customers to use external identity providers with the K8S API
class IdentityServiceConfigResponseContainerV1beta1 {
  /// Whether to enable the Identity Service component
  final bool enabled;

  IdentityServiceConfigResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory IdentityServiceConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return IdentityServiceConfigResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}

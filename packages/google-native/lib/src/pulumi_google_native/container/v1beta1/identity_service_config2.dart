// ignore_for_file: unused_element, unnecessary_cast

/// IdentityServiceConfig is configuration for Identity Service which allows customers to use external identity providers with the K8S API
class IdentityServiceConfig2 {
  /// Whether to enable the Identity Service component
  final bool? enabled;

  IdentityServiceConfig2({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory IdentityServiceConfig2.fromMap(Map<String, dynamic> map) {
    return IdentityServiceConfig2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

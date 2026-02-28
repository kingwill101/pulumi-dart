// ignore_for_file: unused_element, unnecessary_cast

class GetClusterIdentityServiceConfig {
  /// Whether to enable the Identity Service component.
  final bool enabled;

  /// Creates a new [GetClusterIdentityServiceConfig].
  /// [enabled] Whether to enable the Identity Service component.
  GetClusterIdentityServiceConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterIdentityServiceConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterIdentityServiceConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

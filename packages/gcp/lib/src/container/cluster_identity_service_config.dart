// ignore_for_file: unused_element, unnecessary_cast

class ClusterIdentityServiceConfig {
  /// Whether to enable the Identity Service component. It is disabled by default. Set `enabled=true` to enable.
  final bool? enabled;

  /// Creates a new [ClusterIdentityServiceConfig].
  /// [enabled] Whether to enable the Identity Service component. It is disabled by default. Set `enabled=true` to enable.
  ClusterIdentityServiceConfig({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory ClusterIdentityServiceConfig.fromMap(Map<String, dynamic> map) {
    return ClusterIdentityServiceConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

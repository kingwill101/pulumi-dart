// ignore_for_file: unused_element, unnecessary_cast

class ClusterIdentityServiceConfig {
  /// Whether to enable the Identity Service component. It is disabled by default. Set `enabled=true` to enable.
  final bool? enabled;

  ClusterIdentityServiceConfig({
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

  factory ClusterIdentityServiceConfig.fromMap(Map<String, dynamic> map) {
    return ClusterIdentityServiceConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

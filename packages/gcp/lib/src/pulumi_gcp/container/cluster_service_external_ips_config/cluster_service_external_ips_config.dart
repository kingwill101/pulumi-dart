// ignore_for_file: unused_element, unnecessary_cast

class ClusterServiceExternalIpsConfig {
  /// Controls whether external ips specified by a service will be allowed. It is enabled by default.
  final bool enabled;

  ClusterServiceExternalIpsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterServiceExternalIpsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterServiceExternalIpsConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

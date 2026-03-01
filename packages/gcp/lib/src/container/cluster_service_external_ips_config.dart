// ignore_for_file: unused_element, unnecessary_cast

class ClusterServiceExternalIpsConfig {
  /// Controls whether external ips specified by a service will be allowed. It is enabled by default.
  final bool enabled;

  /// Creates a new [ClusterServiceExternalIpsConfig].
  /// [enabled] Controls whether external ips specified by a service will be allowed. It is enabled by default.
  ClusterServiceExternalIpsConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ClusterServiceExternalIpsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterServiceExternalIpsConfig(enabled: map['enabled'] as bool);
  }
}

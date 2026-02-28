// ignore_for_file: unused_element, unnecessary_cast

class GetClusterServiceExternalIpsConfig {
  /// When enabled, services with external ips specified will be allowed.
  final bool enabled;

  /// Creates a new [GetClusterServiceExternalIpsConfig].
  /// [enabled] When enabled, services with external ips specified will be allowed.
  GetClusterServiceExternalIpsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterServiceExternalIpsConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterServiceExternalIpsConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class GetClusterControlPlaneEndpointsConfigIpEndpointsConfig {
  /// Controls whether to allow direct IP access.
  final bool enabled;

  GetClusterControlPlaneEndpointsConfigIpEndpointsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterControlPlaneEndpointsConfigIpEndpointsConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterControlPlaneEndpointsConfigIpEndpointsConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

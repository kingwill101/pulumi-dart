// ignore_for_file: unused_element, unnecessary_cast

class GetClusterControlPlaneEndpointsConfigIpEndpointsConfig {
  /// Controls whether to allow direct IP access.
  final bool enabled;

  /// Creates a new [GetClusterControlPlaneEndpointsConfigIpEndpointsConfig].
  /// [enabled] Controls whether to allow direct IP access.
  GetClusterControlPlaneEndpointsConfigIpEndpointsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterControlPlaneEndpointsConfigIpEndpointsConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterControlPlaneEndpointsConfigIpEndpointsConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

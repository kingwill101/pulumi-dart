// ignore_for_file: unused_element, unnecessary_cast

class ClusterControlPlaneEndpointsConfigIpEndpointsConfig {
  /// Controls whether to allow direct IP access. Defaults to `true`.
  final bool? enabled;

  /// Creates a new [ClusterControlPlaneEndpointsConfigIpEndpointsConfig].
  /// [enabled] Controls whether to allow direct IP access. Defaults to `true`.
  ClusterControlPlaneEndpointsConfigIpEndpointsConfig({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory ClusterControlPlaneEndpointsConfigIpEndpointsConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterControlPlaneEndpointsConfigIpEndpointsConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class ClusterControlPlaneEndpointsConfigIpEndpointsConfig {
  /// Controls whether to allow direct IP access. Defaults to `true`.
  final bool? enabled;

  ClusterControlPlaneEndpointsConfigIpEndpointsConfig({
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

  factory ClusterControlPlaneEndpointsConfigIpEndpointsConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterControlPlaneEndpointsConfigIpEndpointsConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

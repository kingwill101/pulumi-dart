// ignore_for_file: unused_element, unnecessary_cast

class BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig {
  /// (Optional)
  final int? registryBurst;

  /// (Optional)
  final int? registryPullQps;

  /// (Optional)
  final bool? serializeImagePullsDisabled;

  BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig({
    this.registryBurst,
    this.registryPullQps,
    this.serializeImagePullsDisabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final registryBurstValue = registryBurst;
    if (registryBurstValue != null) {
      map['registryBurst'] = registryBurstValue;
    }
    final registryPullQpsValue = registryPullQps;
    if (registryPullQpsValue != null) {
      map['registryPullQps'] = registryPullQpsValue;
    }
    final serializeImagePullsDisabledValue = serializeImagePullsDisabled;
    if (serializeImagePullsDisabledValue != null) {
      map['serializeImagePullsDisabled'] = serializeImagePullsDisabledValue;
    }
    return map;
  }

  factory BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfig(
      registryBurst:
          map['registryBurst'] == null ? null : map['registryBurst'] as int,
      registryPullQps:
          map['registryPullQps'] == null ? null : map['registryPullQps'] as int,
      serializeImagePullsDisabled: map['serializeImagePullsDisabled'] == null
          ? null
          : map['serializeImagePullsDisabled'] as bool,
    );
  }
}

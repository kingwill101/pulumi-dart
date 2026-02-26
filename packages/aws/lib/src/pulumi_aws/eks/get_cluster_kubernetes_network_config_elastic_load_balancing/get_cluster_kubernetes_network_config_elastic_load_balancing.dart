// ignore_for_file: unused_element, unnecessary_cast

class GetClusterKubernetesNetworkConfigElasticLoadBalancing {
  /// Whether zonal shift is enabled.
  final bool enabled;

  GetClusterKubernetesNetworkConfigElasticLoadBalancing({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterKubernetesNetworkConfigElasticLoadBalancing.fromMap(
      Map<String, dynamic> map) {
    return GetClusterKubernetesNetworkConfigElasticLoadBalancing(
      enabled: map['enabled'] as bool,
    );
  }
}

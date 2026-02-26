// ignore_for_file: unused_element, unnecessary_cast

class ClusterKubernetesNetworkConfigElasticLoadBalancing {
  /// Indicates if the load balancing capability is enabled on your EKS Auto Mode cluster. If the load balancing capability is enabled, EKS Auto Mode will create and delete load balancers in your Amazon Web Services account.
  final bool? enabled;

  ClusterKubernetesNetworkConfigElasticLoadBalancing({
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

  factory ClusterKubernetesNetworkConfigElasticLoadBalancing.fromMap(
      Map<String, dynamic> map) {
    return ClusterKubernetesNetworkConfigElasticLoadBalancing(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

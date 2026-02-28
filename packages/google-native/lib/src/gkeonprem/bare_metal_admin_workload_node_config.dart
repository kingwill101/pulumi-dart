// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalAdminWorkloadNodeConfig specifies the workload node configurations.
class BareMetalAdminWorkloadNodeConfig {
  /// The maximum number of pods a node can run. The size of the CIDR range assigned to the node will be derived from this parameter. By default 110 Pods are created per Node. Upper bound is 250 for both HA and non-HA admin cluster. Lower bound is 64 for non-HA admin cluster and 32 for HA admin cluster.
  final String? maxPodsPerNode;

  /// Creates a new [BareMetalAdminWorkloadNodeConfig].
  /// [maxPodsPerNode] The maximum number of pods a node can run. The size of the CIDR range assigned to the node will be derived from this parameter. By default 110 Pods are created per Node. Upper bound is 250 for both HA and non-HA admin cluster. Lower bound is 64 for non-HA admin cluster and 32 for HA admin cluster.
  BareMetalAdminWorkloadNodeConfig({
    this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxPodsPerNodeValue = maxPodsPerNode;
    if (maxPodsPerNodeValue != null) {
      map['maxPodsPerNode'] = maxPodsPerNodeValue;
    }
    return map;
  }

  factory BareMetalAdminWorkloadNodeConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminWorkloadNodeConfig(
      maxPodsPerNode: map['maxPodsPerNode'] == null
          ? null
          : map['maxPodsPerNode'] as String,
    );
  }
}

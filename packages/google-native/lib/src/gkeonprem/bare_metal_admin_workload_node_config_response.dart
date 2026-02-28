// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalAdminWorkloadNodeConfig specifies the workload node configurations.
class BareMetalAdminWorkloadNodeConfigResponse {
  /// The maximum number of pods a node can run. The size of the CIDR range assigned to the node will be derived from this parameter. By default 110 Pods are created per Node. Upper bound is 250 for both HA and non-HA admin cluster. Lower bound is 64 for non-HA admin cluster and 32 for HA admin cluster.
  final String maxPodsPerNode;

  /// Creates a new [BareMetalAdminWorkloadNodeConfigResponse].
  /// [maxPodsPerNode] The maximum number of pods a node can run. The size of the CIDR range assigned to the node will be derived from this parameter. By default 110 Pods are created per Node. Upper bound is 250 for both HA and non-HA admin cluster. Lower bound is 64 for non-HA admin cluster and 32 for HA admin cluster.
  BareMetalAdminWorkloadNodeConfigResponse({
    required this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxPodsPerNode'] = maxPodsPerNode;
    return map;
  }

  factory BareMetalAdminWorkloadNodeConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminWorkloadNodeConfigResponse(
      maxPodsPerNode: map['maxPodsPerNode'] as String,
    );
  }
}

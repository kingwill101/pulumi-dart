// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the workload node configurations.
class BareMetalWorkloadNodeConfigResponse {
  /// Specifies which container runtime will be used.
  final String containerRuntime;

  /// The maximum number of pods a node can run. The size of the CIDR range assigned to the node will be derived from this parameter.
  final String maxPodsPerNode;

  /// Creates a new [BareMetalWorkloadNodeConfigResponse].
  /// [containerRuntime] Specifies which container runtime will be used.
  /// [maxPodsPerNode] The maximum number of pods a node can run. The size of the CIDR range assigned to the node will be derived from this parameter.
  BareMetalWorkloadNodeConfigResponse({
    required this.containerRuntime,
    required this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerRuntime'] = containerRuntime;
    map['maxPodsPerNode'] = maxPodsPerNode;
    return map;
  }

  factory BareMetalWorkloadNodeConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return BareMetalWorkloadNodeConfigResponse(
      containerRuntime: map['containerRuntime'] as String,
      maxPodsPerNode: map['maxPodsPerNode'] as String,
    );
  }
}

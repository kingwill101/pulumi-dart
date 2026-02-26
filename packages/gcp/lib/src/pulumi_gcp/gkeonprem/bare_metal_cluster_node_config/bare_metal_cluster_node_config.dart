// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterNodeConfig {
  /// The available runtimes that can be used to run containers in a Bare Metal User Cluster.
  /// Possible values are: `CONTAINER_RUNTIME_UNSPECIFIED`, `DOCKER`, `CONTAINERD`.
  final String? containerRuntime;

  /// The maximum number of pods a node can run. The size of the CIDR range
  /// assigned to the node will be derived from this parameter.
  final int? maxPodsPerNode;

  BareMetalClusterNodeConfig({
    this.containerRuntime,
    this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerRuntimeValue = containerRuntime;
    if (containerRuntimeValue != null) {
      map['containerRuntime'] = containerRuntimeValue;
    }
    final maxPodsPerNodeValue = maxPodsPerNode;
    if (maxPodsPerNodeValue != null) {
      map['maxPodsPerNode'] = maxPodsPerNodeValue;
    }
    return map;
  }

  factory BareMetalClusterNodeConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterNodeConfig(
      containerRuntime: map['containerRuntime'] == null
          ? null
          : map['containerRuntime'] as String,
      maxPodsPerNode:
          map['maxPodsPerNode'] == null ? null : map['maxPodsPerNode'] as int,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


class BareMetalClusterNodeConfig {
  /// The available runtimes that can be used to run containers in a Bare Metal User Cluster.
  /// Possible values are: `CONTAINER_RUNTIME_UNSPECIFIED`, `DOCKER`, `CONTAINERD`.
  final String? containerRuntime;
  /// The maximum number of pods a node can run. The size of the CIDR range
  /// assigned to the node will be derived from this parameter.
  final int? maxPodsPerNode;

  /// Creates a new [BareMetalClusterNodeConfig].
  /// [containerRuntime] The available runtimes that can be used to run containers in a Bare Metal User Cluster.
  /// [maxPodsPerNode] The maximum number of pods a node can run. The size of the CIDR range
  BareMetalClusterNodeConfig({
    this.containerRuntime,
    this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRuntime': ?containerRuntime,
      'maxPodsPerNode': ?maxPodsPerNode,
    };
  }

  factory BareMetalClusterNodeConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterNodeConfig(
      containerRuntime: map['containerRuntime'] == null ? null : map['containerRuntime'] as String,
      maxPodsPerNode: map['maxPodsPerNode'] == null ? null : map['maxPodsPerNode'] as int,
    );
  }
}


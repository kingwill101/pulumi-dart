// ignore_for_file: unused_element, unnecessary_cast

/// Compute resources associated with the analyze interactive workloads.
class GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources {
  /// Optional. Size in GB of the disk. Default is 100 GB.
  final int? diskSizeGb;

  /// Optional. Max configurable nodes. If max_node_count > node_count, then auto-scaling is enabled.
  final int? maxNodeCount;

  /// Optional. Total number of nodes in the sessions created for this environment.
  final int? nodeCount;

  /// Creates a new [GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources].
  /// [diskSizeGb] Optional. Size in GB of the disk. Default is 100 GB.
  /// [maxNodeCount] Optional. Max configurable nodes. If max_node_count > node_count, then auto-scaling is enabled.
  /// [nodeCount] Optional. Total number of nodes in the sessions created for this environment.
  GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources({
    this.diskSizeGb,
    this.maxNodeCount,
    this.nodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': ?diskSizeGb,
      'maxNodeCount': ?maxNodeCount,
      'nodeCount': ?nodeCount,
    };
  }

  factory GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources(
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      maxNodeCount: map['maxNodeCount'] == null
          ? null
          : map['maxNodeCount'] as int,
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
    );
  }
}

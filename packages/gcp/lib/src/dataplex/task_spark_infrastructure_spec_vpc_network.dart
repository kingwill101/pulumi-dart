// ignore_for_file: unused_element, unnecessary_cast

class TaskSparkInfrastructureSpecVpcNetwork {
  /// The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used.
  final String? network;

  /// List of network tags to apply to the job.
  final List<String>? networkTags;

  /// The Cloud VPC sub-network in which the job is run.
  final String? subNetwork;

  /// Creates a new [TaskSparkInfrastructureSpecVpcNetwork].
  /// [network] The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used.
  /// [networkTags] List of network tags to apply to the job.
  /// [subNetwork] The Cloud VPC sub-network in which the job is run.
  TaskSparkInfrastructureSpecVpcNetwork({
    this.network,
    this.networkTags,
    this.subNetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final networkTagsValue = networkTags;
    if (networkTagsValue != null) {
      map['networkTags'] = networkTagsValue;
    }
    final subNetworkValue = subNetwork;
    if (subNetworkValue != null) {
      map['subNetwork'] = subNetworkValue;
    }
    return map;
  }

  factory TaskSparkInfrastructureSpecVpcNetwork.fromMap(
      Map<String, dynamic> map) {
    return TaskSparkInfrastructureSpecVpcNetwork(
      network: map['network'] == null ? null : map['network'] as String,
      networkTags: map['networkTags'] == null
          ? null
          : (map['networkTags'] as List).cast<String>(),
      subNetwork:
          map['subNetwork'] == null ? null : map['subNetwork'] as String,
    );
  }
}

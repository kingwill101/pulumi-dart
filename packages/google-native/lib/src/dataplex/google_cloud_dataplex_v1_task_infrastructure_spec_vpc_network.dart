// ignore_for_file: unused_element, unnecessary_cast

/// Cloud VPC Network used to run the infrastructure.
class GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork {
  /// Optional. The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used.
  final String? network;

  /// Optional. List of network tags to apply to the job.
  final List<String>? networkTags;

  /// Optional. The Cloud VPC sub-network in which the job is run.
  final String? subNetwork;

  /// Creates a new [GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork].
  /// [network] Optional. The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used.
  /// [networkTags] Optional. List of network tags to apply to the job.
  /// [subNetwork] Optional. The Cloud VPC sub-network in which the job is run.
  GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork({
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

  factory GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork(
      network: map['network'] == null ? null : map['network'] as String,
      networkTags: map['networkTags'] == null
          ? null
          : (map['networkTags'] as List).cast<String>(),
      subNetwork:
          map['subNetwork'] == null ? null : map['subNetwork'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// Cloud VPC Network used to run the infrastructure.
class GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetworkResponse {
  /// Optional. The Cloud VPC network in which the job is run. By default, the Cloud VPC network named Default within the project is used.
  final String network;

  /// Optional. List of network tags to apply to the job.
  final List<String> networkTags;

  /// Optional. The Cloud VPC sub-network in which the job is run.
  final String subNetwork;

  GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetworkResponse({
    required this.network,
    required this.networkTags,
    required this.subNetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    map['networkTags'] = networkTags;
    map['subNetwork'] = subNetwork;
    return map;
  }

  factory GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetworkResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetworkResponse(
      network: map['network'] as String,
      networkTags: (map['networkTags'] as List).cast<String>(),
      subNetwork: map['subNetwork'] as String,
    );
  }
}

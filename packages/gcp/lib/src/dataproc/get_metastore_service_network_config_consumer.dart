// ignore_for_file: unused_element, unnecessary_cast

class GetMetastoreServiceNetworkConfigConsumer {
  /// The URI of the endpoint used to access the metastore service.
  final String endpointUri;

  /// The subnetwork of the customer project from which an IP address is reserved and used as the Dataproc Metastore service's endpoint.
  /// It is accessible to hosts in the subnet and to all hosts in a subnet in the same region and same network.
  /// There must be at least one IP address available in the subnet's primary range. The subnet is specified in the following form:
  /// 'projects/{projectNumber}/regions/{region_id}/subnetworks/{subnetwork_id}
  final String subnetwork;

  /// Creates a new [GetMetastoreServiceNetworkConfigConsumer].
  /// [endpointUri] The URI of the endpoint used to access the metastore service.
  /// [subnetwork] The subnetwork of the customer project from which an IP address is reserved and used as the Dataproc Metastore service's endpoint.
  GetMetastoreServiceNetworkConfigConsumer({
    required this.endpointUri,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointUri'] = endpointUri;
    map['subnetwork'] = subnetwork;
    return map;
  }

  factory GetMetastoreServiceNetworkConfigConsumer.fromMap(
      Map<String, dynamic> map) {
    return GetMetastoreServiceNetworkConfigConsumer(
      endpointUri: map['endpointUri'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}

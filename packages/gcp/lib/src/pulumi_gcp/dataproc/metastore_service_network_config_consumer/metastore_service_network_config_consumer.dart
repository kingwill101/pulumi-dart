// ignore_for_file: unused_element, unnecessary_cast

class MetastoreServiceNetworkConfigConsumer {
  /// (Output)
  /// The URI of the endpoint used to access the metastore service.
  final String? endpointUri;

  /// The subnetwork of the customer project from which an IP address is reserved and used as the Dataproc Metastore service's endpoint.
  /// It is accessible to hosts in the subnet and to all hosts in a subnet in the same region and same network.
  /// There must be at least one IP address available in the subnet's primary range. The subnet is specified in the following form:
  /// `projects/{projectNumber}/regions/{region_id}/subnetworks/{subnetwork_id}
  final String subnetwork;

  MetastoreServiceNetworkConfigConsumer({
    this.endpointUri,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endpointUriValue = endpointUri;
    if (endpointUriValue != null) {
      map['endpointUri'] = endpointUriValue;
    }
    map['subnetwork'] = subnetwork;
    return map;
  }

  factory MetastoreServiceNetworkConfigConsumer.fromMap(
      Map<String, dynamic> map) {
    return MetastoreServiceNetworkConfigConsumer(
      endpointUri:
          map['endpointUri'] == null ? null : map['endpointUri'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// Contains information of the customer's network configurations.
class ConsumerResponse {
  /// The location of the endpoint URI. Format: projects/{project}/locations/{location}.
  final String endpointLocation;

  /// The URI of the endpoint used to access the metastore service.
  final String endpointUri;

  /// Immutable. The subnetwork of the customer project from which an IP address is reserved and used as the Dataproc Metastore service's endpoint. It is accessible to hosts in the subnet and to all hosts in a subnet in the same region and same network. There must be at least one IP address available in the subnet's primary range. The subnet is specified in the following form:projects/{project_number}/regions/{region_id}/subnetworks/{subnetwork_id}
  final String subnetwork;

  /// Creates a new [ConsumerResponse].
  /// [endpointLocation] The location of the endpoint URI. Format: projects/{project}/locations/{location}.
  /// [endpointUri] The URI of the endpoint used to access the metastore service.
  /// [subnetwork] Immutable. The subnetwork of the customer project from which an IP address is reserved and used as the Dataproc Metastore service's endpoint. It is accessible to hosts in the subnet and to all hosts in a subnet in the same region and same network. There must be at least one IP address available in the subnet's primary range. The subnet is specified in the following form:projects/{project_number}/regions/{region_id}/subnetworks/{subnetwork_id}
  ConsumerResponse({
    required this.endpointLocation,
    required this.endpointUri,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointLocation'] = endpointLocation;
    map['endpointUri'] = endpointUri;
    map['subnetwork'] = subnetwork;
    return map;
  }

  factory ConsumerResponse.fromMap(Map<String, dynamic> map) {
    return ConsumerResponse(
      endpointLocation: map['endpointLocation'] as String,
      endpointUri: map['endpointUri'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}

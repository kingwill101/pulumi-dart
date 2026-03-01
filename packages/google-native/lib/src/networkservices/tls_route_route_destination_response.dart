// ignore_for_file: unused_element, unnecessary_cast

/// Describe the destination for traffic to be routed to.
class TlsRouteRouteDestinationResponse {
  /// The URL of a BackendService to route traffic to.
  final String serviceName;

  /// Optional. Specifies the proportion of requests forwareded to the backend referenced by the service_name field. This is computed as: - weight/Sum(weights in destinations) Weights in all destinations does not need to sum up to 100.
  final int weight;

  /// Creates a new [TlsRouteRouteDestinationResponse].
  /// [serviceName] The URL of a BackendService to route traffic to.
  /// [weight] Optional. Specifies the proportion of requests forwareded to the backend referenced by the service_name field. This is computed as: - weight/Sum(weights in destinations) Weights in all destinations does not need to sum up to 100.
  TlsRouteRouteDestinationResponse({
    required this.serviceName,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'serviceName': serviceName, 'weight': weight};
  }

  factory TlsRouteRouteDestinationResponse.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteDestinationResponse(
      serviceName: map['serviceName'] as String,
      weight: map['weight'] as int,
    );
  }
}

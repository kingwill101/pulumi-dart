// ignore_for_file: unused_element, unnecessary_cast

/// Describe the destination for traffic to be routed to.
class TlsRouteRouteDestinationResponse2 {
  /// The URL of a BackendService to route traffic to.
  final String serviceName;

  /// Optional. Specifies the proportion of requests forwareded to the backend referenced by the service_name field. This is computed as: - weight/Sum(weights in destinations) Weights in all destinations does not need to sum up to 100.
  final int weight;

  TlsRouteRouteDestinationResponse2({
    required this.serviceName,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceName'] = serviceName;
    map['weight'] = weight;
    return map;
  }

  factory TlsRouteRouteDestinationResponse2.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteDestinationResponse2(
      serviceName: map['serviceName'] as String,
      weight: map['weight'] as int,
    );
  }
}

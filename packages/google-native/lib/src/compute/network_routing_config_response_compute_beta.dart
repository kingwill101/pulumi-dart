// ignore_for_file: unused_element, unnecessary_cast

/// A routing configuration attached to a network resource. The message includes the list of routers associated with the network, and a flag indicating the type of routing behavior to enforce network-wide.
class NetworkRoutingConfigResponseComputeBeta {
  /// The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
  final String routingMode;

  /// Creates a new [NetworkRoutingConfigResponseComputeBeta].
  /// [routingMode] The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
  NetworkRoutingConfigResponseComputeBeta({required this.routingMode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'routingMode': routingMode};
  }

  factory NetworkRoutingConfigResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkRoutingConfigResponseComputeBeta(
      routingMode: map['routingMode'] as String,
    );
  }
}

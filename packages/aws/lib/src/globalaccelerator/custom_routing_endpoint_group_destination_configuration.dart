// ignore_for_file: unused_element, unnecessary_cast

class CustomRoutingEndpointGroupDestinationConfiguration {
  /// The first port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.
  final int fromPort;

  /// The protocol for the endpoint group that is associated with a custom routing accelerator. The protocol can be either `"TCP"` or `"UDP"`.
  final List<String> protocols;

  /// The last port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.
  final int toPort;

  /// Creates a new [CustomRoutingEndpointGroupDestinationConfiguration].
  /// [fromPort] The first port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.
  /// [protocols] The protocol for the endpoint group that is associated with a custom routing accelerator. The protocol can be either `"TCP"` or `"UDP"`.
  /// [toPort] The last port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.
  CustomRoutingEndpointGroupDestinationConfiguration({
    required this.fromPort,
    required this.protocols,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fromPort'] = fromPort;
    map['protocols'] = protocols;
    map['toPort'] = toPort;
    return map;
  }

  factory CustomRoutingEndpointGroupDestinationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return CustomRoutingEndpointGroupDestinationConfiguration(
      fromPort: map['fromPort'] as int,
      protocols: (map['protocols'] as List).cast<String>(),
      toPort: map['toPort'] as int,
    );
  }
}

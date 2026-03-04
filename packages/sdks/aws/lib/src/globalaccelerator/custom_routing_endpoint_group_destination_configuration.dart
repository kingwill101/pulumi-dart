// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomRoutingEndpointGroupDestinationConfiguration {
  /// The first port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.
  final pulumi.Input<int> fromPort;

  /// The protocol for the endpoint group that is associated with a custom routing accelerator. The protocol can be either `"TCP"` or `"UDP"`.
  final pulumi.Input<List<String>> protocols;

  /// The last port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.
  final pulumi.Input<int> toPort;

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
    return <String, dynamic>{
      'fromPort': fromPort,
      'protocols': protocols,
      'toPort': toPort,
    };
  }

  factory CustomRoutingEndpointGroupDestinationConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return CustomRoutingEndpointGroupDestinationConfiguration(
      fromPort: pulumi.Input.fromValue(map['fromPort'] as int),
      protocols: pulumi.Input.fromValue(
        (map['protocols'] as List).cast<String>(),
      ),
      toPort: pulumi.Input.fromValue(map['toPort'] as int),
    );
  }
}

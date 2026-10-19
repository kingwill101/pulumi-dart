// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomRoutingEndpointGroupDestinationConfiguration {
  /// First port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.
  final pulumi.Input<int> fromPort;
  /// Protocol for the endpoint group that is associated with a custom routing accelerator. The protocol can be either `"TCP"` or `"UDP"`.
  final pulumi.Input<List<String>> protocols;
  /// Last port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.
  final pulumi.Input<int> toPort;

  /// Creates a new [CustomRoutingEndpointGroupDestinationConfiguration].
  /// [fromPort] First port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.
  /// [protocols] Protocol for the endpoint group that is associated with a custom routing accelerator. The protocol can be either `"TCP"` or `"UDP"`.
  /// [toPort] Last port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.
  const CustomRoutingEndpointGroupDestinationConfiguration({
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

  factory CustomRoutingEndpointGroupDestinationConfiguration.fromMap(Map<String, dynamic> map) {
    return CustomRoutingEndpointGroupDestinationConfiguration(
      fromPort: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['fromPort'])),
      protocols: pulumi.Input.fromValue((map['protocols'] as List).cast<String>()),
      toPort: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['toPort'])),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointGroupPortOverride {
  /// Endpoint port that you want a listener port to be mapped to. This is the port on the endpoint, such as the Application Load Balancer or Amazon EC2 instance.
  final pulumi.Input<int> endpointPort;
  /// Listener port that you want to map to a specific endpoint port. This is the port that user traffic arrives to the Global Accelerator on.
  final pulumi.Input<int> listenerPort;

  /// Creates a new [EndpointGroupPortOverride].
  /// [endpointPort] Endpoint port that you want a listener port to be mapped to. This is the port on the endpoint, such as the Application Load Balancer or Amazon EC2 instance.
  /// [listenerPort] Listener port that you want to map to a specific endpoint port. This is the port that user traffic arrives to the Global Accelerator on.
  const EndpointGroupPortOverride({
    required this.endpointPort,
    required this.listenerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointPort': endpointPort,
      'listenerPort': listenerPort,
    };
  }

  factory EndpointGroupPortOverride.fromMap(Map<String, dynamic> map) {
    return EndpointGroupPortOverride(
      endpointPort: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['endpointPort'])),
      listenerPort: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['listenerPort'])),
    );
  }
}

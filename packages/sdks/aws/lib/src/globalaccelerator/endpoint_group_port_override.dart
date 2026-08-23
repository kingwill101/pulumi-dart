// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointGroupPortOverride {
  /// The endpoint port that you want a listener port to be mapped to. This is the port on the endpoint, such as the Application Load Balancer or Amazon EC2 instance.
  final pulumi.Input<int> endpointPort;
  /// The listener port that you want to map to a specific endpoint port. This is the port that user traffic arrives to the Global Accelerator on.
  final pulumi.Input<int> listenerPort;

  /// Creates a new [EndpointGroupPortOverride].
  /// [endpointPort] The endpoint port that you want a listener port to be mapped to. This is the port on the endpoint, such as the Application Load Balancer or Amazon EC2 instance.
  /// [listenerPort] The listener port that you want to map to a specific endpoint port. This is the port that user traffic arrives to the Global Accelerator on.
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
      endpointPort: pulumi.Input.fromValue(map['endpointPort'] as int),
      listenerPort: pulumi.Input.fromValue(map['listenerPort'] as int),
    );
  }
}

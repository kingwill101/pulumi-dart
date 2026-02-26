// ignore_for_file: unused_element, unnecessary_cast

class EndpointGroupPortOverride {
  /// The endpoint port that you want a listener port to be mapped to. This is the port on the endpoint, such as the Application Load Balancer or Amazon EC2 instance.
  final int endpointPort;

  /// The listener port that you want to map to a specific endpoint port. This is the port that user traffic arrives to the Global Accelerator on.
  final int listenerPort;

  EndpointGroupPortOverride({
    required this.endpointPort,
    required this.listenerPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointPort'] = endpointPort;
    map['listenerPort'] = listenerPort;
    return map;
  }

  factory EndpointGroupPortOverride.fromMap(Map<String, dynamic> map) {
    return EndpointGroupPortOverride(
      endpointPort: map['endpointPort'] as int,
      listenerPort: map['listenerPort'] as int,
    );
  }
}

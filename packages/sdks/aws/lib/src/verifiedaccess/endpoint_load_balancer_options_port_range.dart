// ignore_for_file: unused_element, unnecessary_cast


class EndpointLoadBalancerOptionsPortRange {
  final int fromPort;
  final int toPort;

  /// Creates a new [EndpointLoadBalancerOptionsPortRange].
  /// [fromPort] Required.
  /// [toPort] Required.
  EndpointLoadBalancerOptionsPortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': fromPort,
      'toPort': toPort,
    };
  }

  factory EndpointLoadBalancerOptionsPortRange.fromMap(Map<String, dynamic> map) {
    return EndpointLoadBalancerOptionsPortRange(
      fromPort: map['fromPort'] as int,
      toPort: map['toPort'] as int,
    );
  }
}


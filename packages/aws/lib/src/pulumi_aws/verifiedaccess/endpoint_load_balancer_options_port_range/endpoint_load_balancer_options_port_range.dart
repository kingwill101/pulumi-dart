// ignore_for_file: unused_element, unnecessary_cast

class EndpointLoadBalancerOptionsPortRange {
  final int fromPort;
  final int toPort;

  EndpointLoadBalancerOptionsPortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fromPort'] = fromPort;
    map['toPort'] = toPort;
    return map;
  }

  factory EndpointLoadBalancerOptionsPortRange.fromMap(
      Map<String, dynamic> map) {
    return EndpointLoadBalancerOptionsPortRange(
      fromPort: map['fromPort'] as int,
      toPort: map['toPort'] as int,
    );
  }
}

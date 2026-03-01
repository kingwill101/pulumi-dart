// ignore_for_file: unused_element, unnecessary_cast


class CustomRoutingEndpointTrafficPolicyPortRange {
  /// The start port of the port range of the traffic destination. The specified port must fall within the port range of the specified endpoint group.
  final int? fromPort;
  /// The end port of the port range of the traffic destination. The specified port must fall within the port range of the specified endpoint group.
  final int? toPort;

  /// Creates a new [CustomRoutingEndpointTrafficPolicyPortRange].
  /// [fromPort] The start port of the port range of the traffic destination. The specified port must fall within the port range of the specified endpoint group.
  /// [toPort] The end port of the port range of the traffic destination. The specified port must fall within the port range of the specified endpoint group.
  CustomRoutingEndpointTrafficPolicyPortRange({
    this.fromPort,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': ?fromPort,
      'toPort': ?toPort,
    };
  }

  factory CustomRoutingEndpointTrafficPolicyPortRange.fromMap(Map<String, dynamic> map) {
    return CustomRoutingEndpointTrafficPolicyPortRange(
      fromPort: map['fromPort'] == null ? null : map['fromPort'] as int,
      toPort: map['toPort'] == null ? null : map['toPort'] as int,
    );
  }
}


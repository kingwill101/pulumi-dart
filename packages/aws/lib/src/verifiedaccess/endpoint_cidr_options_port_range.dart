// ignore_for_file: unused_element, unnecessary_cast

class EndpointCidrOptionsPortRange {
  final int fromPort;
  final int toPort;

  /// Creates a new [EndpointCidrOptionsPortRange].
  /// [fromPort] Required.
  /// [toPort] Required.
  EndpointCidrOptionsPortRange({required this.fromPort, required this.toPort});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fromPort': fromPort, 'toPort': toPort};
  }

  factory EndpointCidrOptionsPortRange.fromMap(Map<String, dynamic> map) {
    return EndpointCidrOptionsPortRange(
      fromPort: map['fromPort'] as int,
      toPort: map['toPort'] as int,
    );
  }
}

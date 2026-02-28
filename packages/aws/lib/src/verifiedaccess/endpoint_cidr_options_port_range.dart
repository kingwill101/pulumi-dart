// ignore_for_file: unused_element, unnecessary_cast

class EndpointCidrOptionsPortRange {
  final int fromPort;
  final int toPort;

  /// Creates a new [EndpointCidrOptionsPortRange].
  /// [fromPort] Required.
  /// [toPort] Required.
  EndpointCidrOptionsPortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fromPort'] = fromPort;
    map['toPort'] = toPort;
    return map;
  }

  factory EndpointCidrOptionsPortRange.fromMap(Map<String, dynamic> map) {
    return EndpointCidrOptionsPortRange(
      fromPort: map['fromPort'] as int,
      toPort: map['toPort'] as int,
    );
  }
}

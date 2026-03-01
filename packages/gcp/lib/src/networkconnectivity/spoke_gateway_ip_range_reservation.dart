// ignore_for_file: unused_element, unnecessary_cast

class SpokeGatewayIpRangeReservation {
  /// A block of IP address ranges used to allocate supporting infrastructure for this gateway—for example, 10.1.2.0/23. The IP address block must be a /23 range. This IP address block must not overlap with subnets in any spoke or peer network that the gateway can communicate with.
  final String ipRange;

  /// Creates a new [SpokeGatewayIpRangeReservation].
  /// [ipRange] A block of IP address ranges used to allocate supporting infrastructure for this gateway—for example, 10.1.2.0/23. The IP address block must be a /23 range. This IP address block must not overlap with subnets in any spoke or peer network that the gateway can communicate with.
  SpokeGatewayIpRangeReservation({required this.ipRange});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipRange': ipRange};
  }

  factory SpokeGatewayIpRangeReservation.fromMap(Map<String, dynamic> map) {
    return SpokeGatewayIpRangeReservation(ipRange: map['ipRange'] as String);
  }
}

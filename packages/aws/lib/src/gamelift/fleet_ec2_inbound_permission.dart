// ignore_for_file: unused_element, unnecessary_cast


class FleetEc2InboundPermission {
  /// Starting value for a range of allowed port numbers.
  final int fromPort;
  /// Range of allowed IP addresses expressed in CIDR notationE.g., `000.000.000.000/[subnet mask]` or `0.0.0.0/[subnet mask]`.
  final String ipRange;
  /// Network communication protocol used by the fleetE.g., `TCP` or `UDP`
  final String protocol;
  /// Ending value for a range of allowed port numbers. Port numbers are end-inclusive. This value must be higher than `from_port`.
  final int toPort;

  /// Creates a new [FleetEc2InboundPermission].
  /// [fromPort] Starting value for a range of allowed port numbers.
  /// [ipRange] Range of allowed IP addresses expressed in CIDR notationE.g., `000.000.000.000/[subnet mask]` or `0.0.0.0/[subnet mask]`.
  /// [protocol] Network communication protocol used by the fleetE.g., `TCP` or `UDP`
  /// [toPort] Ending value for a range of allowed port numbers. Port numbers are end-inclusive. This value must be higher than `from_port`.
  FleetEc2InboundPermission({
    required this.fromPort,
    required this.ipRange,
    required this.protocol,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': fromPort,
      'ipRange': ipRange,
      'protocol': protocol,
      'toPort': toPort,
    };
  }

  factory FleetEc2InboundPermission.fromMap(Map<String, dynamic> map) {
    return FleetEc2InboundPermission(
      fromPort: map['fromPort'] as int,
      ipRange: map['ipRange'] as String,
      protocol: map['protocol'] as String,
      toPort: map['toPort'] as int,
    );
  }
}


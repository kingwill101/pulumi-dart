// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringFilter {
  /// IP CIDR ranges that apply as a filter on the source (ingress) or
  /// destination (egress) IP in the IP header. Only IPv4 is supported.
  final List<String>? cidrRanges;

  /// Direction of traffic to mirror.
  /// Default value is `BOTH`.
  /// Possible values are: `INGRESS`, `EGRESS`, `BOTH`.
  final String? direction;

  /// Possible IP protocols including tcp, udp, icmp and esp
  final List<String>? ipProtocols;

  /// Creates a new [PacketMirroringFilter].
  /// [cidrRanges] IP CIDR ranges that apply as a filter on the source (ingress) or
  /// [direction] Direction of traffic to mirror.
  /// [ipProtocols] Possible IP protocols including tcp, udp, icmp and esp
  PacketMirroringFilter({
    this.cidrRanges,
    this.direction,
    this.ipProtocols,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cidrRangesValue = cidrRanges;
    if (cidrRangesValue != null) {
      map['cidrRanges'] = cidrRangesValue;
    }
    final directionValue = direction;
    if (directionValue != null) {
      map['direction'] = directionValue;
    }
    final ipProtocolsValue = ipProtocols;
    if (ipProtocolsValue != null) {
      map['ipProtocols'] = ipProtocolsValue;
    }
    return map;
  }

  factory PacketMirroringFilter.fromMap(Map<String, dynamic> map) {
    return PacketMirroringFilter(
      cidrRanges: map['cidrRanges'] == null
          ? null
          : (map['cidrRanges'] as List).cast<String>(),
      direction: map['direction'] == null ? null : map['direction'] as String,
      ipProtocols: map['ipProtocols'] == null
          ? null
          : (map['ipProtocols'] as List).cast<String>(),
    );
  }
}

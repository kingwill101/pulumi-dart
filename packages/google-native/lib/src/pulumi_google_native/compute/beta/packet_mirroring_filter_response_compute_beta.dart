// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringFilterResponseComputeBeta {
  /// IP CIDR ranges that apply as filter on the source (ingress) or destination (egress) IP in the IP header. Only IPv4 is supported. If no ranges are specified, all traffic that matches the specified IPProtocols is mirrored. If neither cidrRanges nor IPProtocols is specified, all traffic is mirrored.
  final List<String> cidrRanges;

  /// Direction of traffic to mirror, either INGRESS, EGRESS, or BOTH. The default is BOTH.
  final String direction;

  /// Protocols that apply as filter on mirrored traffic. If no protocols are specified, all traffic that matches the specified CIDR ranges is mirrored. If neither cidrRanges nor IPProtocols is specified, all traffic is mirrored.
  final List<String> ipProtocols;

  PacketMirroringFilterResponseComputeBeta({
    required this.cidrRanges,
    required this.direction,
    required this.ipProtocols,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrRanges'] = cidrRanges;
    map['direction'] = direction;
    map['ipProtocols'] = ipProtocols;
    return map;
  }

  factory PacketMirroringFilterResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringFilterResponseComputeBeta(
      cidrRanges: (map['cidrRanges'] as List).cast<String>(),
      direction: map['direction'] as String,
      ipProtocols: (map['ipProtocols'] as List).cast<String>(),
    );
  }
}

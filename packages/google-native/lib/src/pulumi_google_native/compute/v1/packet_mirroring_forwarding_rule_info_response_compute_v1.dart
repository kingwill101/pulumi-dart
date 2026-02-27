// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringForwardingRuleInfoResponseComputeV1 {
  /// Unique identifier for the forwarding rule; defined by the server.
  final String canonicalUrl;

  /// Resource URL to the forwarding rule representing the ILB configured as destination of the mirrored traffic.
  final String url;

  PacketMirroringForwardingRuleInfoResponseComputeV1({
    required this.canonicalUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canonicalUrl'] = canonicalUrl;
    map['url'] = url;
    return map;
  }

  factory PacketMirroringForwardingRuleInfoResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringForwardingRuleInfoResponseComputeV1(
      canonicalUrl: map['canonicalUrl'] as String,
      url: map['url'] as String,
    );
  }
}

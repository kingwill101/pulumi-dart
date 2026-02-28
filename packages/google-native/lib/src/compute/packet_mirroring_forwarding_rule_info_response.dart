// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringForwardingRuleInfoResponse {
  /// Unique identifier for the forwarding rule; defined by the server.
  final String canonicalUrl;

  /// Resource URL to the forwarding rule representing the ILB configured as destination of the mirrored traffic.
  final String url;

  /// Creates a new [PacketMirroringForwardingRuleInfoResponse].
  /// [canonicalUrl] Unique identifier for the forwarding rule; defined by the server.
  /// [url] Resource URL to the forwarding rule representing the ILB configured as destination of the mirrored traffic.
  PacketMirroringForwardingRuleInfoResponse({
    required this.canonicalUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canonicalUrl'] = canonicalUrl;
    map['url'] = url;
    return map;
  }

  factory PacketMirroringForwardingRuleInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringForwardingRuleInfoResponse(
      canonicalUrl: map['canonicalUrl'] as String,
      url: map['url'] as String,
    );
  }
}

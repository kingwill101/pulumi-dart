// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringForwardingRuleInfoComputeBeta {
  /// Resource URL to the forwarding rule representing the ILB configured as destination of the mirrored traffic.
  final String? url;

  /// Creates a new [PacketMirroringForwardingRuleInfoComputeBeta].
  /// [url] Resource URL to the forwarding rule representing the ILB configured as destination of the mirrored traffic.
  PacketMirroringForwardingRuleInfoComputeBeta({
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory PacketMirroringForwardingRuleInfoComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringForwardingRuleInfoComputeBeta(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

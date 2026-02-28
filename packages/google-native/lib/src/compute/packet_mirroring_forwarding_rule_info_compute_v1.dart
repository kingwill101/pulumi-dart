// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringForwardingRuleInfoComputeV1 {
  /// Resource URL to the forwarding rule representing the ILB configured as destination of the mirrored traffic.
  final String? url;

  /// Creates a new [PacketMirroringForwardingRuleInfoComputeV1].
  /// [url] Resource URL to the forwarding rule representing the ILB configured as destination of the mirrored traffic.
  PacketMirroringForwardingRuleInfoComputeV1({
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

  factory PacketMirroringForwardingRuleInfoComputeV1.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringForwardingRuleInfoComputeV1(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

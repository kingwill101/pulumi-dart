// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringForwardingRuleInfo2 {
  /// Resource URL to the forwarding rule representing the ILB configured as destination of the mirrored traffic.
  final String? url;

  PacketMirroringForwardingRuleInfo2({
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

  factory PacketMirroringForwardingRuleInfo2.fromMap(Map<String, dynamic> map) {
    return PacketMirroringForwardingRuleInfo2(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

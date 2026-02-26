// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringForwardingRuleInfo3 {
  /// Resource URL to the forwarding rule representing the ILB configured as destination of the mirrored traffic.
  final String? url;

  PacketMirroringForwardingRuleInfo3({
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

  factory PacketMirroringForwardingRuleInfo3.fromMap(Map<String, dynamic> map) {
    return PacketMirroringForwardingRuleInfo3(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

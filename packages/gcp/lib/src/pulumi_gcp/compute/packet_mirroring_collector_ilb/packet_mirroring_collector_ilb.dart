// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringCollectorIlb {
  /// The URL of the forwarding rule.
  final String url;

  PacketMirroringCollectorIlb({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['url'] = url;
    return map;
  }

  factory PacketMirroringCollectorIlb.fromMap(Map<String, dynamic> map) {
    return PacketMirroringCollectorIlb(
      url: map['url'] as String,
    );
  }
}

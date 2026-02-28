// ignore_for_file: unused_element, unnecessary_cast


class PacketMirroringCollectorIlb {
  /// The URL of the forwarding rule.
  final String url;

  /// Creates a new [PacketMirroringCollectorIlb].
  /// [url] The URL of the forwarding rule.
  PacketMirroringCollectorIlb({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory PacketMirroringCollectorIlb.fromMap(Map<String, dynamic> map) {
    return PacketMirroringCollectorIlb(
      url: map['url'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringNetworkInfoResponse2 {
  /// Unique identifier for the network; defined by the server.
  final String canonicalUrl;

  /// URL of the network resource.
  final String url;

  PacketMirroringNetworkInfoResponse2({
    required this.canonicalUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canonicalUrl'] = canonicalUrl;
    map['url'] = url;
    return map;
  }

  factory PacketMirroringNetworkInfoResponse2.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringNetworkInfoResponse2(
      canonicalUrl: map['canonicalUrl'] as String,
      url: map['url'] as String,
    );
  }
}

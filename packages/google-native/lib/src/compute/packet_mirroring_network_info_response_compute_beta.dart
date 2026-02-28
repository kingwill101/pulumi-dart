// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringNetworkInfoResponseComputeBeta {
  /// Unique identifier for the network; defined by the server.
  final String canonicalUrl;

  /// URL of the network resource.
  final String url;

  /// Creates a new [PacketMirroringNetworkInfoResponseComputeBeta].
  /// [canonicalUrl] Unique identifier for the network; defined by the server.
  /// [url] URL of the network resource.
  PacketMirroringNetworkInfoResponseComputeBeta({
    required this.canonicalUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canonicalUrl'] = canonicalUrl;
    map['url'] = url;
    return map;
  }

  factory PacketMirroringNetworkInfoResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringNetworkInfoResponseComputeBeta(
      canonicalUrl: map['canonicalUrl'] as String,
      url: map['url'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringNetworkInfoResponse {
  /// Unique identifier for the network; defined by the server.
  final String canonicalUrl;

  /// URL of the network resource.
  final String url;

  /// Creates a new [PacketMirroringNetworkInfoResponse].
  /// [canonicalUrl] Unique identifier for the network; defined by the server.
  /// [url] URL of the network resource.
  PacketMirroringNetworkInfoResponse({
    required this.canonicalUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'canonicalUrl': canonicalUrl, 'url': url};
  }

  factory PacketMirroringNetworkInfoResponse.fromMap(Map<String, dynamic> map) {
    return PacketMirroringNetworkInfoResponse(
      canonicalUrl: map['canonicalUrl'] as String,
      url: map['url'] as String,
    );
  }
}

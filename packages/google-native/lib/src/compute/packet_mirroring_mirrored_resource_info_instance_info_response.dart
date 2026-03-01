// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringMirroredResourceInfoInstanceInfoResponse {
  /// Unique identifier for the instance; defined by the server.
  final String canonicalUrl;

  /// Resource URL to the virtual machine instance which is being mirrored.
  final String url;

  /// Creates a new [PacketMirroringMirroredResourceInfoInstanceInfoResponse].
  /// [canonicalUrl] Unique identifier for the instance; defined by the server.
  /// [url] Resource URL to the virtual machine instance which is being mirrored.
  PacketMirroringMirroredResourceInfoInstanceInfoResponse({
    required this.canonicalUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'canonicalUrl': canonicalUrl, 'url': url};
  }

  factory PacketMirroringMirroredResourceInfoInstanceInfoResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return PacketMirroringMirroredResourceInfoInstanceInfoResponse(
      canonicalUrl: map['canonicalUrl'] as String,
      url: map['url'] as String,
    );
  }
}

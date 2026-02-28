// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeBeta {
  /// Unique identifier for the instance; defined by the server.
  final String canonicalUrl;

  /// Resource URL to the virtual machine instance which is being mirrored.
  final String url;

  /// Creates a new [PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeBeta].
  /// [canonicalUrl] Unique identifier for the instance; defined by the server.
  /// [url] Resource URL to the virtual machine instance which is being mirrored.
  PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeBeta({
    required this.canonicalUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canonicalUrl'] = canonicalUrl;
    map['url'] = url;
    return map;
  }

  factory PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeBeta(
      canonicalUrl: map['canonicalUrl'] as String,
      url: map['url'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeV1 {
  /// Unique identifier for the instance; defined by the server.
  final String canonicalUrl;

  /// Resource URL to the virtual machine instance which is being mirrored.
  final String url;

  /// Creates a new [PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeV1].
  /// [canonicalUrl] Unique identifier for the instance; defined by the server.
  /// [url] Resource URL to the virtual machine instance which is being mirrored.
  PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeV1({
    required this.canonicalUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canonicalUrl'] = canonicalUrl;
    map['url'] = url;
    return map;
  }

  factory PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoInstanceInfoResponseComputeV1(
      canonicalUrl: map['canonicalUrl'] as String,
      url: map['url'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringMirroredResourceInfoInstanceInfoResponse2 {
  /// Unique identifier for the instance; defined by the server.
  final String canonicalUrl;

  /// Resource URL to the virtual machine instance which is being mirrored.
  final String url;

  PacketMirroringMirroredResourceInfoInstanceInfoResponse2({
    required this.canonicalUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canonicalUrl'] = canonicalUrl;
    map['url'] = url;
    return map;
  }

  factory PacketMirroringMirroredResourceInfoInstanceInfoResponse2.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoInstanceInfoResponse2(
      canonicalUrl: map['canonicalUrl'] as String,
      url: map['url'] as String,
    );
  }
}

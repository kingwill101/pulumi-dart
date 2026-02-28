// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringMirroredResourceInfoInstanceInfoComputeV1 {
  /// Resource URL to the virtual machine instance which is being mirrored.
  final String? url;

  /// Creates a new [PacketMirroringMirroredResourceInfoInstanceInfoComputeV1].
  /// [url] Resource URL to the virtual machine instance which is being mirrored.
  PacketMirroringMirroredResourceInfoInstanceInfoComputeV1({
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

  factory PacketMirroringMirroredResourceInfoInstanceInfoComputeV1.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoInstanceInfoComputeV1(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

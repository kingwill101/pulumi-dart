// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringMirroredResourceInfoInstanceInfoComputeBeta {
  /// Resource URL to the virtual machine instance which is being mirrored.
  final String? url;

  /// Creates a new [PacketMirroringMirroredResourceInfoInstanceInfoComputeBeta].
  /// [url] Resource URL to the virtual machine instance which is being mirrored.
  PacketMirroringMirroredResourceInfoInstanceInfoComputeBeta({this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'url': ?url};
  }

  factory PacketMirroringMirroredResourceInfoInstanceInfoComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return PacketMirroringMirroredResourceInfoInstanceInfoComputeBeta(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

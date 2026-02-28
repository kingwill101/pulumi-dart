// ignore_for_file: unused_element, unnecessary_cast


class PacketMirroringMirroredResourceInfoInstanceInfo {
  /// Resource URL to the virtual machine instance which is being mirrored.
  final String? url;

  /// Creates a new [PacketMirroringMirroredResourceInfoInstanceInfo].
  /// [url] Resource URL to the virtual machine instance which is being mirrored.
  PacketMirroringMirroredResourceInfoInstanceInfo({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory PacketMirroringMirroredResourceInfoInstanceInfo.fromMap(Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoInstanceInfo(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}


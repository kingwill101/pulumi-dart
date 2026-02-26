// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringMirroredResourceInfoInstanceInfo2 {
  /// Resource URL to the virtual machine instance which is being mirrored.
  final String? url;

  PacketMirroringMirroredResourceInfoInstanceInfo2({
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

  factory PacketMirroringMirroredResourceInfoInstanceInfo2.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoInstanceInfo2(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

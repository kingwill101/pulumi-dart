// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringMirroredResourceInfoInstanceInfo3 {
  /// Resource URL to the virtual machine instance which is being mirrored.
  final String? url;

  PacketMirroringMirroredResourceInfoInstanceInfo3({
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

  factory PacketMirroringMirroredResourceInfoInstanceInfo3.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoInstanceInfo3(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

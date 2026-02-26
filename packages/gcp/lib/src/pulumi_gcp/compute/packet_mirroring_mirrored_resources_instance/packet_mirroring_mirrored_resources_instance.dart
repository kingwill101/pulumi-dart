// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringMirroredResourcesInstance {
  /// The URL of the instances where this rule should be active.
  final String url;

  PacketMirroringMirroredResourcesInstance({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['url'] = url;
    return map;
  }

  factory PacketMirroringMirroredResourcesInstance.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourcesInstance(
      url: map['url'] as String,
    );
  }
}

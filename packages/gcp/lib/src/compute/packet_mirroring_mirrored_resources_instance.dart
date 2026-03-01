// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringMirroredResourcesInstance {
  /// The URL of the instances where this rule should be active.
  final String url;

  /// Creates a new [PacketMirroringMirroredResourcesInstance].
  /// [url] The URL of the instances where this rule should be active.
  PacketMirroringMirroredResourcesInstance({required this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'url': url};
  }

  factory PacketMirroringMirroredResourcesInstance.fromMap(
    Map<String, dynamic> map,
  ) {
    return PacketMirroringMirroredResourcesInstance(url: map['url'] as String);
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringMirroredResourcesSubnetwork {
  /// The URL of the subnetwork where this rule should be active.
  final String url;

  /// Creates a new [PacketMirroringMirroredResourcesSubnetwork].
  /// [url] The URL of the subnetwork where this rule should be active.
  PacketMirroringMirroredResourcesSubnetwork({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['url'] = url;
    return map;
  }

  factory PacketMirroringMirroredResourcesSubnetwork.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourcesSubnetwork(
      url: map['url'] as String,
    );
  }
}

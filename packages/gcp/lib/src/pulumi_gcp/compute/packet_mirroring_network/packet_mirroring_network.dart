// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringNetwork {
  /// The full self_link URL of the network where this rule is active.
  final String url;

  PacketMirroringNetwork({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['url'] = url;
    return map;
  }

  factory PacketMirroringNetwork.fromMap(Map<String, dynamic> map) {
    return PacketMirroringNetwork(
      url: map['url'] as String,
    );
  }
}

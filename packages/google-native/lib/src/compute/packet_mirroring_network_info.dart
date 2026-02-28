// ignore_for_file: unused_element, unnecessary_cast


class PacketMirroringNetworkInfo {
  /// URL of the network resource.
  final String? url;

  /// Creates a new [PacketMirroringNetworkInfo].
  /// [url] URL of the network resource.
  PacketMirroringNetworkInfo({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory PacketMirroringNetworkInfo.fromMap(Map<String, dynamic> map) {
    return PacketMirroringNetworkInfo(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}


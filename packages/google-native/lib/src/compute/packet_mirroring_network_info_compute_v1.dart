// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringNetworkInfoComputeV1 {
  /// URL of the network resource.
  final String? url;

  /// Creates a new [PacketMirroringNetworkInfoComputeV1].
  /// [url] URL of the network resource.
  PacketMirroringNetworkInfoComputeV1({this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'url': ?url};
  }

  factory PacketMirroringNetworkInfoComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return PacketMirroringNetworkInfoComputeV1(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringNetworkInfoComputeV1 {
  /// URL of the network resource.
  final String? url;

  PacketMirroringNetworkInfoComputeV1({
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

  factory PacketMirroringNetworkInfoComputeV1.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringNetworkInfoComputeV1(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

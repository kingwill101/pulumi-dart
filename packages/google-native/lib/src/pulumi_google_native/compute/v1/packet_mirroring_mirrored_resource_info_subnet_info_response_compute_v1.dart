// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeV1 {
  /// Unique identifier for the subnetwork; defined by the server.
  final String canonicalUrl;

  /// Resource URL to the subnetwork for which traffic from/to all VM instances will be mirrored.
  final String url;

  PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeV1({
    required this.canonicalUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canonicalUrl'] = canonicalUrl;
    map['url'] = url;
    return map;
  }

  factory PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeV1(
      canonicalUrl: map['canonicalUrl'] as String,
      url: map['url'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeBeta {
  /// Unique identifier for the subnetwork; defined by the server.
  final String canonicalUrl;

  /// Resource URL to the subnetwork for which traffic from/to all VM instances will be mirrored.
  final String url;

  PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeBeta({
    required this.canonicalUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canonicalUrl'] = canonicalUrl;
    map['url'] = url;
    return map;
  }

  factory PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoSubnetInfoResponseComputeBeta(
      canonicalUrl: map['canonicalUrl'] as String,
      url: map['url'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringMirroredResourceInfoSubnetInfoComputeBeta {
  /// Resource URL to the subnetwork for which traffic from/to all VM instances will be mirrored.
  final String? url;

  /// Creates a new [PacketMirroringMirroredResourceInfoSubnetInfoComputeBeta].
  /// [url] Resource URL to the subnetwork for which traffic from/to all VM instances will be mirrored.
  PacketMirroringMirroredResourceInfoSubnetInfoComputeBeta({
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

  factory PacketMirroringMirroredResourceInfoSubnetInfoComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoSubnetInfoComputeBeta(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

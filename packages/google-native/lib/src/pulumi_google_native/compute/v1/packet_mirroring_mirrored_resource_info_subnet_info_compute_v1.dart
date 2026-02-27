// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringMirroredResourceInfoSubnetInfoComputeV1 {
  /// Resource URL to the subnetwork for which traffic from/to all VM instances will be mirrored.
  final String? url;

  PacketMirroringMirroredResourceInfoSubnetInfoComputeV1({
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

  factory PacketMirroringMirroredResourceInfoSubnetInfoComputeV1.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoSubnetInfoComputeV1(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

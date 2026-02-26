// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringMirroredResourceInfoSubnetInfo {
  /// Resource URL to the subnetwork for which traffic from/to all VM instances will be mirrored.
  final String? url;

  PacketMirroringMirroredResourceInfoSubnetInfo({
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

  factory PacketMirroringMirroredResourceInfoSubnetInfo.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoSubnetInfo(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

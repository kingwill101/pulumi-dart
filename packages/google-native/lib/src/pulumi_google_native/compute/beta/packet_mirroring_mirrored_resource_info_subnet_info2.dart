// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringMirroredResourceInfoSubnetInfo2 {
  /// Resource URL to the subnetwork for which traffic from/to all VM instances will be mirrored.
  final String? url;

  PacketMirroringMirroredResourceInfoSubnetInfo2({
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

  factory PacketMirroringMirroredResourceInfoSubnetInfo2.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringMirroredResourceInfoSubnetInfo2(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringNetworkInfo2 {
  /// URL of the network resource.
  final String? url;

  PacketMirroringNetworkInfo2({
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

  factory PacketMirroringNetworkInfo2.fromMap(Map<String, dynamic> map) {
    return PacketMirroringNetworkInfo2(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

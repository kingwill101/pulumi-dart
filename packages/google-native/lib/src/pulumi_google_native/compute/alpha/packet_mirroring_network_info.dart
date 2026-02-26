// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringNetworkInfo {
  /// URL of the network resource.
  final String? url;

  PacketMirroringNetworkInfo({
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

  factory PacketMirroringNetworkInfo.fromMap(Map<String, dynamic> map) {
    return PacketMirroringNetworkInfo(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

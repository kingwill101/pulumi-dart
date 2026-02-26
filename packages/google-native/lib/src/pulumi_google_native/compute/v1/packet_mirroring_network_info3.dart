// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringNetworkInfo3 {
  /// URL of the network resource.
  final String? url;

  PacketMirroringNetworkInfo3({
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

  factory PacketMirroringNetworkInfo3.fromMap(Map<String, dynamic> map) {
    return PacketMirroringNetworkInfo3(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

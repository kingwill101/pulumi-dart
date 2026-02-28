// ignore_for_file: unused_element, unnecessary_cast

class PacketMirroringNetworkInfoComputeBeta {
  /// URL of the network resource.
  final String? url;

  /// Creates a new [PacketMirroringNetworkInfoComputeBeta].
  /// [url] URL of the network resource.
  PacketMirroringNetworkInfoComputeBeta({
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

  factory PacketMirroringNetworkInfoComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return PacketMirroringNetworkInfoComputeBeta(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

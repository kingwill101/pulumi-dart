// ignore_for_file: unused_element, unnecessary_cast

class RouterBgpPeerCustomLearnedIpRangeResponse2 {
  /// The custom learned route IP address range. Must be a valid CIDR-formatted prefix. If an IP address is provided without a subnet mask, it is interpreted as, for IPv4, a `/32` singular IP address range, and, for IPv6, `/128`.
  final String range;

  RouterBgpPeerCustomLearnedIpRangeResponse2({
    required this.range,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['range'] = range;
    return map;
  }

  factory RouterBgpPeerCustomLearnedIpRangeResponse2.fromMap(
      Map<String, dynamic> map) {
    return RouterBgpPeerCustomLearnedIpRangeResponse2(
      range: map['range'] as String,
    );
  }
}

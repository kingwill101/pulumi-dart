// ignore_for_file: unused_element, unnecessary_cast

class RouterBgpPeerCustomLearnedIpRange3 {
  /// The custom learned route IP address range. Must be a valid CIDR-formatted prefix. If an IP address is provided without a subnet mask, it is interpreted as, for IPv4, a `/32` singular IP address range, and, for IPv6, `/128`.
  final String? range;

  RouterBgpPeerCustomLearnedIpRange3({
    this.range,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rangeValue = range;
    if (rangeValue != null) {
      map['range'] = rangeValue;
    }
    return map;
  }

  factory RouterBgpPeerCustomLearnedIpRange3.fromMap(Map<String, dynamic> map) {
    return RouterBgpPeerCustomLearnedIpRange3(
      range: map['range'] == null ? null : map['range'] as String,
    );
  }
}

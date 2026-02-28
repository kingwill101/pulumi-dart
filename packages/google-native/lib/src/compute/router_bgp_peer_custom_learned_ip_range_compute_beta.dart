// ignore_for_file: unused_element, unnecessary_cast

class RouterBgpPeerCustomLearnedIpRangeComputeBeta {
  /// The custom learned route IP address range. Must be a valid CIDR-formatted prefix. If an IP address is provided without a subnet mask, it is interpreted as, for IPv4, a `/32` singular IP address range, and, for IPv6, `/128`.
  final String? range;

  /// Creates a new [RouterBgpPeerCustomLearnedIpRangeComputeBeta].
  /// [range] The custom learned route IP address range. Must be a valid CIDR-formatted prefix. If an IP address is provided without a subnet mask, it is interpreted as, for IPv4, a `/32` singular IP address range, and, for IPv6, `/128`.
  RouterBgpPeerCustomLearnedIpRangeComputeBeta({
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

  factory RouterBgpPeerCustomLearnedIpRangeComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return RouterBgpPeerCustomLearnedIpRangeComputeBeta(
      range: map['range'] == null ? null : map['range'] as String,
    );
  }
}

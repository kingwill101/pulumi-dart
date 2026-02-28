// ignore_for_file: unused_element, unnecessary_cast

class RouterBgpPeerCustomLearnedIpRangeResponse {
  /// The custom learned route IP address range. Must be a valid CIDR-formatted prefix. If an IP address is provided without a subnet mask, it is interpreted as, for IPv4, a `/32` singular IP address range, and, for IPv6, `/128`.
  final String range;

  /// Creates a new [RouterBgpPeerCustomLearnedIpRangeResponse].
  /// [range] The custom learned route IP address range. Must be a valid CIDR-formatted prefix. If an IP address is provided without a subnet mask, it is interpreted as, for IPv4, a `/32` singular IP address range, and, for IPv6, `/128`.
  RouterBgpPeerCustomLearnedIpRangeResponse({
    required this.range,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['range'] = range;
    return map;
  }

  factory RouterBgpPeerCustomLearnedIpRangeResponse.fromMap(
      Map<String, dynamic> map) {
    return RouterBgpPeerCustomLearnedIpRangeResponse(
      range: map['range'] as String,
    );
  }
}

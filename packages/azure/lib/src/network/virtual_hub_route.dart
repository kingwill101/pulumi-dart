// ignore_for_file: unused_element, unnecessary_cast


class VirtualHubRoute {
  /// A list of Address Prefixes.
  final List<String> addressPrefixes;
  /// The IP Address that Packets should be forwarded to as the Next Hop.
  final String nextHopIpAddress;

  /// Creates a new [VirtualHubRoute].
  /// [addressPrefixes] A list of Address Prefixes.
  /// [nextHopIpAddress] The IP Address that Packets should be forwarded to as the Next Hop.
  VirtualHubRoute({
    required this.addressPrefixes,
    required this.nextHopIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': addressPrefixes,
      'nextHopIpAddress': nextHopIpAddress,
    };
  }

  factory VirtualHubRoute.fromMap(Map<String, dynamic> map) {
    return VirtualHubRoute(
      addressPrefixes: (map['addressPrefixes'] as List).cast<String>(),
      nextHopIpAddress: map['nextHopIpAddress'] as String,
    );
  }
}


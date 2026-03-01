// ignore_for_file: unused_element, unnecessary_cast


/// VirtualHub route.
class VirtualHubRouteResponse {
  /// List of all addressPrefixes.
  final List<String>? addressPrefixes;
  /// NextHop ip address.
  final String? nextHopIpAddress;

  /// Creates a new [VirtualHubRouteResponse].
  /// [addressPrefixes] List of all addressPrefixes.
  /// [nextHopIpAddress] NextHop ip address.
  VirtualHubRouteResponse({
    this.addressPrefixes,
    this.nextHopIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'nextHopIpAddress': ?nextHopIpAddress,
    };
  }

  factory VirtualHubRouteResponse.fromMap(Map<String, dynamic> map) {
    return VirtualHubRouteResponse(
      addressPrefixes: map['addressPrefixes'] == null ? null : (map['addressPrefixes'] as List).cast<String>(),
      nextHopIpAddress: map['nextHopIpAddress'] == null ? null : map['nextHopIpAddress'] as String,
    );
  }
}


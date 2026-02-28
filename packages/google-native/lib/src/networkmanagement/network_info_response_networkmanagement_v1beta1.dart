// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with a Compute Engine network.
class NetworkInfoResponseNetworkmanagementV1beta1 {
  /// Name of a Compute Engine network.
  final String displayName;

  /// The IP range that matches the test.
  final String matchedIpRange;

  /// URI of a Compute Engine network.
  final String uri;

  /// Creates a new [NetworkInfoResponseNetworkmanagementV1beta1].
  /// [displayName] Name of a Compute Engine network.
  /// [matchedIpRange] The IP range that matches the test.
  /// [uri] URI of a Compute Engine network.
  NetworkInfoResponseNetworkmanagementV1beta1({
    required this.displayName,
    required this.matchedIpRange,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['matchedIpRange'] = matchedIpRange;
    map['uri'] = uri;
    return map;
  }

  factory NetworkInfoResponseNetworkmanagementV1beta1.fromMap(
      Map<String, dynamic> map) {
    return NetworkInfoResponseNetworkmanagementV1beta1(
      displayName: map['displayName'] as String,
      matchedIpRange: map['matchedIpRange'] as String,
      uri: map['uri'] as String,
    );
  }
}

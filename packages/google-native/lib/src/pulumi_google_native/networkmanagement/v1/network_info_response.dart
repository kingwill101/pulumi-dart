// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Metadata associated with a Compute Engine network.
class NetworkInfoResponse {
  /// Name of a Compute Engine network.
  final String displayName;

  /// The IP range that matches the test.
  final String matchedIpRange;

  /// URI of a Compute Engine network.
  final String uri;

  NetworkInfoResponse({
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

  factory NetworkInfoResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInfoResponse(
      displayName: map['displayName'] as String,
      matchedIpRange: map['matchedIpRange'] as String,
      uri: map['uri'] as String,
    );
  }
}

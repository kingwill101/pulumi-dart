// ignore_for_file: unused_element, unnecessary_cast

/// The IP addresses of callers that are allowed to use the key.
class ServerKeyRestrictionsResponse {
  /// A list of the caller IP addresses that are allowed to make API calls with this key.
  final List<String> allowedIps;

  /// Creates a new [ServerKeyRestrictionsResponse].
  /// [allowedIps] A list of the caller IP addresses that are allowed to make API calls with this key.
  ServerKeyRestrictionsResponse({required this.allowedIps});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'allowedIps': allowedIps};
  }

  factory ServerKeyRestrictionsResponse.fromMap(Map<String, dynamic> map) {
    return ServerKeyRestrictionsResponse(
      allowedIps: (map['allowedIps'] as List).cast<String>(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// The IP addresses of callers that are allowed to use the key.
class V2ServerKeyRestrictionsResponse {
  /// A list of the caller IP addresses that are allowed to make API calls with this key.
  final List<String> allowedIps;

  /// Creates a new [V2ServerKeyRestrictionsResponse].
  /// [allowedIps] A list of the caller IP addresses that are allowed to make API calls with this key.
  V2ServerKeyRestrictionsResponse({
    required this.allowedIps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedIps'] = allowedIps;
    return map;
  }

  factory V2ServerKeyRestrictionsResponse.fromMap(Map<String, dynamic> map) {
    return V2ServerKeyRestrictionsResponse(
      allowedIps: (map['allowedIps'] as List).cast<String>(),
    );
  }
}

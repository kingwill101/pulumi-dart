// ignore_for_file: unused_element, unnecessary_cast

/// The HTTP referrers (websites) that are allowed to use the key.
class V2BrowserKeyRestrictionsResponse {
  /// A list of regular expressions for the referrer URLs that are allowed to make API calls with this key.
  final List<String> allowedReferrers;

  V2BrowserKeyRestrictionsResponse({
    required this.allowedReferrers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedReferrers'] = allowedReferrers;
    return map;
  }

  factory V2BrowserKeyRestrictionsResponse.fromMap(Map<String, dynamic> map) {
    return V2BrowserKeyRestrictionsResponse(
      allowedReferrers: (map['allowedReferrers'] as List).cast<String>(),
    );
  }
}

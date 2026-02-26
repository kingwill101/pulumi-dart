// ignore_for_file: unused_element, unnecessary_cast

class ApiKeyRestrictionsBrowserKeyRestrictions {
  /// A list of regular expressions for the referrer URLs that are allowed to make API calls with this key.
  final List<String> allowedReferrers;

  ApiKeyRestrictionsBrowserKeyRestrictions({
    required this.allowedReferrers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedReferrers'] = allowedReferrers;
    return map;
  }

  factory ApiKeyRestrictionsBrowserKeyRestrictions.fromMap(
      Map<String, dynamic> map) {
    return ApiKeyRestrictionsBrowserKeyRestrictions(
      allowedReferrers: (map['allowedReferrers'] as List).cast<String>(),
    );
  }
}

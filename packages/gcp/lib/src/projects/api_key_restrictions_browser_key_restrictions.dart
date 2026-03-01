// ignore_for_file: unused_element, unnecessary_cast

class ApiKeyRestrictionsBrowserKeyRestrictions {
  /// A list of regular expressions for the referrer URLs that are allowed to make API calls with this key.
  final List<String> allowedReferrers;

  /// Creates a new [ApiKeyRestrictionsBrowserKeyRestrictions].
  /// [allowedReferrers] A list of regular expressions for the referrer URLs that are allowed to make API calls with this key.
  ApiKeyRestrictionsBrowserKeyRestrictions({required this.allowedReferrers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'allowedReferrers': allowedReferrers};
  }

  factory ApiKeyRestrictionsBrowserKeyRestrictions.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApiKeyRestrictionsBrowserKeyRestrictions(
      allowedReferrers: (map['allowedReferrers'] as List).cast<String>(),
    );
  }
}

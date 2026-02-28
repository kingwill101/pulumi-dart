// ignore_for_file: unused_element, unnecessary_cast

/// The HTTP referrers (websites) that are allowed to use the key.
class V2BrowserKeyRestrictions {
  /// A list of regular expressions for the referrer URLs that are allowed to make API calls with this key.
  final List<String>? allowedReferrers;

  /// Creates a new [V2BrowserKeyRestrictions].
  /// [allowedReferrers] A list of regular expressions for the referrer URLs that are allowed to make API calls with this key.
  V2BrowserKeyRestrictions({
    this.allowedReferrers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedReferrersValue = allowedReferrers;
    if (allowedReferrersValue != null) {
      map['allowedReferrers'] = allowedReferrersValue;
    }
    return map;
  }

  factory V2BrowserKeyRestrictions.fromMap(Map<String, dynamic> map) {
    return V2BrowserKeyRestrictions(
      allowedReferrers: map['allowedReferrers'] == null
          ? null
          : (map['allowedReferrers'] as List).cast<String>(),
    );
  }
}

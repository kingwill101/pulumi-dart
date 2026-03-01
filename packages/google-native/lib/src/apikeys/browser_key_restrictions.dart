// ignore_for_file: unused_element, unnecessary_cast

/// The HTTP referrers (websites) that are allowed to use the key.
class BrowserKeyRestrictions {
  /// A list of regular expressions for the referrer URLs that are allowed to make API calls with this key.
  final List<String>? allowedReferrers;

  /// Creates a new [BrowserKeyRestrictions].
  /// [allowedReferrers] A list of regular expressions for the referrer URLs that are allowed to make API calls with this key.
  BrowserKeyRestrictions({this.allowedReferrers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'allowedReferrers': ?allowedReferrers};
  }

  factory BrowserKeyRestrictions.fromMap(Map<String, dynamic> map) {
    return BrowserKeyRestrictions(
      allowedReferrers: map['allowedReferrers'] == null
          ? null
          : (map['allowedReferrers'] as List).cast<String>(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


/// Defines a policy of only allowing regions by explicitly adding them to an allowlist.
class GoogleCloudIdentitytoolkitAdminV2AllowlistOnly {
  /// Two letter unicode region codes to allow as defined by https://cldr.unicode.org/ The full list of these region codes is here: https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json
  final List<String>? allowedRegions;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2AllowlistOnly].
  /// [allowedRegions] Two letter unicode region codes to allow as defined by https://cldr.unicode.org/ The full list of these region codes is here: https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json
  GoogleCloudIdentitytoolkitAdminV2AllowlistOnly({
    this.allowedRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedRegions': ?allowedRegions,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2AllowlistOnly.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2AllowlistOnly(
      allowedRegions: map['allowedRegions'] == null ? null : (map['allowedRegions'] as List).cast<String>(),
    );
  }
}


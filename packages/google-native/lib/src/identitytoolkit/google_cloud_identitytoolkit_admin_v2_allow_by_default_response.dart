// ignore_for_file: unused_element, unnecessary_cast

/// Defines a policy of allowing every region by default and adding disallowed regions to a disallow list.
class GoogleCloudIdentitytoolkitAdminV2AllowByDefaultResponse {
  /// Two letter unicode region codes to disallow as defined by https://cldr.unicode.org/ The full list of these region codes is here: https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json
  final List<String> disallowedRegions;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2AllowByDefaultResponse].
  /// [disallowedRegions] Two letter unicode region codes to disallow as defined by https://cldr.unicode.org/ The full list of these region codes is here: https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json
  GoogleCloudIdentitytoolkitAdminV2AllowByDefaultResponse({
    required this.disallowedRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disallowedRegions': disallowedRegions};
  }

  factory GoogleCloudIdentitytoolkitAdminV2AllowByDefaultResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIdentitytoolkitAdminV2AllowByDefaultResponse(
      disallowedRegions: (map['disallowedRegions'] as List).cast<String>(),
    );
  }
}

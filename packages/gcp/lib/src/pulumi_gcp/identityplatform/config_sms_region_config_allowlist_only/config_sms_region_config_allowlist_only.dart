// ignore_for_file: unused_element, unnecessary_cast

class ConfigSmsRegionConfigAllowlistOnly {
  /// Two letter unicode region codes to allow as defined by https://cldr.unicode.org/ The full list of these region codes is here: https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json
  final List<String>? allowedRegions;

  ConfigSmsRegionConfigAllowlistOnly({
    this.allowedRegions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedRegionsValue = allowedRegions;
    if (allowedRegionsValue != null) {
      map['allowedRegions'] = allowedRegionsValue;
    }
    return map;
  }

  factory ConfigSmsRegionConfigAllowlistOnly.fromMap(Map<String, dynamic> map) {
    return ConfigSmsRegionConfigAllowlistOnly(
      allowedRegions: map['allowedRegions'] == null
          ? null
          : (map['allowedRegions'] as List).cast<String>(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class ConfigSmsRegionConfigAllowByDefault {
  /// Two letter unicode region codes to disallow as defined by https://cldr.unicode.org/ The full list of these region codes is here: https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json
  final List<String>? disallowedRegions;

  ConfigSmsRegionConfigAllowByDefault({
    this.disallowedRegions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disallowedRegionsValue = disallowedRegions;
    if (disallowedRegionsValue != null) {
      map['disallowedRegions'] = disallowedRegionsValue;
    }
    return map;
  }

  factory ConfigSmsRegionConfigAllowByDefault.fromMap(
      Map<String, dynamic> map) {
    return ConfigSmsRegionConfigAllowByDefault(
      disallowedRegions: map['disallowedRegions'] == null
          ? null
          : (map['disallowedRegions'] as List).cast<String>(),
    );
  }
}

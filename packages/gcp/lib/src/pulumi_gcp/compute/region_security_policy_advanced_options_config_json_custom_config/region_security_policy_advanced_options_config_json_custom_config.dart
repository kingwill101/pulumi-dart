// ignore_for_file: unused_element, unnecessary_cast

class RegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig {
  /// A list of custom Content-Type header values to apply the JSON parsing.
  final List<String> contentTypes;

  RegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig({
    required this.contentTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentTypes'] = contentTypes;
    return map;
  }

  factory RegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig.fromMap(
      Map<String, dynamic> map) {
    return RegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig(
      contentTypes: (map['contentTypes'] as List).cast<String>(),
    );
  }
}

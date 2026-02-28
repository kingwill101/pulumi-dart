// ignore_for_file: unused_element, unnecessary_cast

class GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig {
  /// A list of custom Content-Type header values to apply the JSON parsing.
  final List<String> contentTypes;

  /// Creates a new [GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig].
  /// [contentTypes] A list of custom Content-Type header values to apply the JSON parsing.
  GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig({
    required this.contentTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentTypes'] = contentTypes;
    return map;
  }

  factory GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig.fromMap(
      Map<String, dynamic> map) {
    return GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig(
      contentTypes: (map['contentTypes'] as List).cast<String>(),
    );
  }
}

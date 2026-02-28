// ignore_for_file: unused_element, unnecessary_cast

class GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig {
  /// A list of custom Content-Type header values to apply the JSON parsing.
  final List<String> contentTypes;

  /// Creates a new [GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig].
  /// [contentTypes] A list of custom Content-Type header values to apply the JSON parsing.
  GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig({
    required this.contentTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentTypes'] = contentTypes;
    return map;
  }

  factory GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig(
      contentTypes: (map['contentTypes'] as List).cast<String>(),
    );
  }
}

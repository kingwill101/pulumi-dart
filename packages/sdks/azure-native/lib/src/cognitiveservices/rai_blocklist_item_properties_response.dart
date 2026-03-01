// ignore_for_file: unused_element, unnecessary_cast


/// RAI Custom Blocklist Item properties.
class RaiBlocklistItemPropertiesResponse {
  /// If the pattern is a regex pattern.
  final bool? isRegex;
  /// Pattern to match against.
  final String? pattern;

  /// Creates a new [RaiBlocklistItemPropertiesResponse].
  /// [isRegex] If the pattern is a regex pattern.
  /// [pattern] Pattern to match against.
  RaiBlocklistItemPropertiesResponse({
    this.isRegex,
    this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isRegex': ?isRegex,
      'pattern': ?pattern,
    };
  }

  factory RaiBlocklistItemPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RaiBlocklistItemPropertiesResponse(
      isRegex: map['isRegex'] == null ? null : map['isRegex'] as bool,
      pattern: map['pattern'] == null ? null : map['pattern'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// RAI Custom Blocklist Item properties.
class RaiBlocklistItemProperties {
  /// If the pattern is a regex pattern.
  final bool? isRegex;
  /// Pattern to match against.
  final String? pattern;

  /// Creates a new [RaiBlocklistItemProperties].
  /// [isRegex] If the pattern is a regex pattern.
  /// [pattern] Pattern to match against.
  RaiBlocklistItemProperties({
    this.isRegex,
    this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isRegex': ?isRegex,
      'pattern': ?pattern,
    };
  }

  factory RaiBlocklistItemProperties.fromMap(Map<String, dynamic> map) {
    return RaiBlocklistItemProperties(
      isRegex: map['isRegex'] == null ? null : map['isRegex'] as bool,
      pattern: map['pattern'] == null ? null : map['pattern'] as String,
    );
  }
}


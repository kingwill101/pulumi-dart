// ignore_for_file: unused_element, unnecessary_cast

class UptimeCheckConfigContentMatcherJsonPathMatcher {
  /// Options to perform JSONPath content matching.
  /// Default value is `EXACT_MATCH`.
  /// Possible values are: `EXACT_MATCH`, `REGEX_MATCH`.
  final String? jsonMatcher;

  /// JSONPath within the response output pointing to the expected `ContentMatcher::content` to match against.
  final String jsonPath;

  /// Creates a new [UptimeCheckConfigContentMatcherJsonPathMatcher].
  /// [jsonMatcher] Options to perform JSONPath content matching.
  /// [jsonPath] JSONPath within the response output pointing to the expected `ContentMatcher::content` to match against.
  UptimeCheckConfigContentMatcherJsonPathMatcher({
    this.jsonMatcher,
    required this.jsonPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final jsonMatcherValue = jsonMatcher;
    if (jsonMatcherValue != null) {
      map['jsonMatcher'] = jsonMatcherValue;
    }
    map['jsonPath'] = jsonPath;
    return map;
  }

  factory UptimeCheckConfigContentMatcherJsonPathMatcher.fromMap(
      Map<String, dynamic> map) {
    return UptimeCheckConfigContentMatcherJsonPathMatcher(
      jsonMatcher:
          map['jsonMatcher'] == null ? null : map['jsonMatcher'] as String,
      jsonPath: map['jsonPath'] as String,
    );
  }
}

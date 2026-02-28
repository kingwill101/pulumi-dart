// ignore_for_file: unused_element, unnecessary_cast

/// Message defining a custom regular expression.
class GooglePrivacyDlpV2RegexResponse {
  /// The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included.
  final List<int> groupIndexes;

  /// Pattern defining the regular expression. Its syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.
  final String pattern;

  /// Creates a new [GooglePrivacyDlpV2RegexResponse].
  /// [groupIndexes] The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included.
  /// [pattern] Pattern defining the regular expression. Its syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.
  GooglePrivacyDlpV2RegexResponse({
    required this.groupIndexes,
    required this.pattern,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupIndexes'] = groupIndexes;
    map['pattern'] = pattern;
    return map;
  }

  factory GooglePrivacyDlpV2RegexResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RegexResponse(
      groupIndexes: (map['groupIndexes'] as List).cast<int>(),
      pattern: map['pattern'] as String,
    );
  }
}

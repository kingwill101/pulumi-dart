// ignore_for_file: unused_element, unnecessary_cast

import 'uptime_check_config_content_matcher_json_path_matcher.dart';

class UptimeCheckConfigContentMatcher {
  /// String or regex content to match (max 1024 bytes)
  final String content;

  /// Information needed to perform a JSONPath content match. Used for `ContentMatcherOption::MATCHES_JSON_PATH` and `ContentMatcherOption::NOT_MATCHES_JSON_PATH`.
  /// Structure is documented below.
  final UptimeCheckConfigContentMatcherJsonPathMatcher? jsonPathMatcher;

  /// The type of content matcher that will be applied to the server output, compared to the content string when the check is run.
  /// Default value is `CONTAINS_STRING`.
  /// Possible values are: `CONTAINS_STRING`, `NOT_CONTAINS_STRING`, `MATCHES_REGEX`, `NOT_MATCHES_REGEX`, `MATCHES_JSON_PATH`, `NOT_MATCHES_JSON_PATH`.
  final String? matcher;

  /// Creates a new [UptimeCheckConfigContentMatcher].
  /// [content] String or regex content to match (max 1024 bytes)
  /// [jsonPathMatcher] Information needed to perform a JSONPath content match. Used for `ContentMatcherOption::MATCHES_JSON_PATH` and `ContentMatcherOption::NOT_MATCHES_JSON_PATH`.
  /// [matcher] The type of content matcher that will be applied to the server output, compared to the content string when the check is run.
  UptimeCheckConfigContentMatcher({
    required this.content,
    this.jsonPathMatcher,
    this.matcher,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    final jsonPathMatcherValue = jsonPathMatcher;
    if (jsonPathMatcherValue != null) {
      map['jsonPathMatcher'] = jsonPathMatcherValue.toMap();
    }
    final matcherValue = matcher;
    if (matcherValue != null) {
      map['matcher'] = matcherValue;
    }
    return map;
  }

  factory UptimeCheckConfigContentMatcher.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigContentMatcher(
      content: map['content'] as String,
      jsonPathMatcher: map['jsonPathMatcher'] == null
          ? null
          : UptimeCheckConfigContentMatcherJsonPathMatcher.fromMap(
              (map['jsonPathMatcher'] as Map).cast<String, dynamic>()),
      matcher: map['matcher'] == null ? null : map['matcher'] as String,
    );
  }
}

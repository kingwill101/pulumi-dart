// ignore_for_file: unused_element, unnecessary_cast

import 'json_path_matcher_json_matcher.dart';

/// Information needed to perform a JSONPath content match. Used for ContentMatcherOption::MATCHES_JSON_PATH and ContentMatcherOption::NOT_MATCHES_JSON_PATH.
class JsonPathMatcher {
  /// The type of JSONPath match that will be applied to the JSON output (ContentMatcher.content)
  final JsonPathMatcherJsonMatcher? jsonMatcher;
  /// JSONPath within the response output pointing to the expected ContentMatcher::content to match against.
  final String? jsonPath;

  /// Creates a new [JsonPathMatcher].
  /// [jsonMatcher] The type of JSONPath match that will be applied to the JSON output (ContentMatcher.content)
  /// [jsonPath] JSONPath within the response output pointing to the expected ContentMatcher::content to match against.
  JsonPathMatcher({
    this.jsonMatcher,
    this.jsonPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonMatcher': ?jsonMatcher == null ? null : jsonMatcher!.value,
      'jsonPath': ?jsonPath,
    };
  }

  factory JsonPathMatcher.fromMap(Map<String, dynamic> map) {
    return JsonPathMatcher(
      jsonMatcher: map['jsonMatcher'] == null ? null : JsonPathMatcherJsonMatcher.fromValue(map['jsonMatcher'] as String),
      jsonPath: map['jsonPath'] == null ? null : map['jsonPath'] as String,
    );
  }
}


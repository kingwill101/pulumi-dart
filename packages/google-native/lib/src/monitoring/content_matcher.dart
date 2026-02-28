// ignore_for_file: unused_element, unnecessary_cast

import 'content_matcher_matcher.dart';
import 'json_path_matcher.dart';

/// Optional. Used to perform content matching. This allows matching based on substrings and regular expressions, together with their negations. Only the first 4 MB of an HTTP or HTTPS check's response (and the first 1 MB of a TCP check's response) are examined for purposes of content matching.
class ContentMatcher {
  /// String, regex or JSON content to match. Maximum 1024 bytes. An empty content string indicates no content matching is to be performed.
  final String? content;

  /// Matcher information for MATCHES_JSON_PATH and NOT_MATCHES_JSON_PATH
  final JsonPathMatcher? jsonPathMatcher;

  /// The type of content matcher that will be applied to the server output, compared to the content string when the check is run.
  final ContentMatcherMatcher? matcher;

  /// Creates a new [ContentMatcher].
  /// [content] String, regex or JSON content to match. Maximum 1024 bytes. An empty content string indicates no content matching is to be performed.
  /// [jsonPathMatcher] Matcher information for MATCHES_JSON_PATH and NOT_MATCHES_JSON_PATH
  /// [matcher] The type of content matcher that will be applied to the server output, compared to the content string when the check is run.
  ContentMatcher({
    this.content,
    this.jsonPathMatcher,
    this.matcher,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue;
    }
    final jsonPathMatcherValue = jsonPathMatcher;
    if (jsonPathMatcherValue != null) {
      map['jsonPathMatcher'] = jsonPathMatcherValue.toMap();
    }
    final matcherValue = matcher;
    if (matcherValue != null) {
      map['matcher'] = matcherValue.value;
    }
    return map;
  }

  factory ContentMatcher.fromMap(Map<String, dynamic> map) {
    return ContentMatcher(
      content: map['content'] == null ? null : map['content'] as String,
      jsonPathMatcher: map['jsonPathMatcher'] == null
          ? null
          : JsonPathMatcher.fromMap(
              (map['jsonPathMatcher'] as Map).cast<String, dynamic>()),
      matcher: map['matcher'] == null
          ? null
          : ContentMatcherMatcher.fromValue(map['matcher'] as String),
    );
  }
}

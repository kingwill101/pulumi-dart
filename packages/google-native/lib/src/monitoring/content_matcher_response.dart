// ignore_for_file: unused_element, unnecessary_cast

import 'json_path_matcher_response.dart';

/// Optional. Used to perform content matching. This allows matching based on substrings and regular expressions, together with their negations. Only the first 4 MB of an HTTP or HTTPS check's response (and the first 1 MB of a TCP check's response) are examined for purposes of content matching.
class ContentMatcherResponse {
  /// String, regex or JSON content to match. Maximum 1024 bytes. An empty content string indicates no content matching is to be performed.
  final String content;
  /// Matcher information for MATCHES_JSON_PATH and NOT_MATCHES_JSON_PATH
  final JsonPathMatcherResponse jsonPathMatcher;
  /// The type of content matcher that will be applied to the server output, compared to the content string when the check is run.
  final String matcher;

  /// Creates a new [ContentMatcherResponse].
  /// [content] String, regex or JSON content to match. Maximum 1024 bytes. An empty content string indicates no content matching is to be performed.
  /// [jsonPathMatcher] Matcher information for MATCHES_JSON_PATH and NOT_MATCHES_JSON_PATH
  /// [matcher] The type of content matcher that will be applied to the server output, compared to the content string when the check is run.
  ContentMatcherResponse({
    required this.content,
    required this.jsonPathMatcher,
    required this.matcher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'jsonPathMatcher': jsonPathMatcher.toMap(),
      'matcher': matcher,
    };
  }

  factory ContentMatcherResponse.fromMap(Map<String, dynamic> map) {
    return ContentMatcherResponse(
      content: map['content'] as String,
      jsonPathMatcher: JsonPathMatcherResponse.fromMap((map['jsonPathMatcher'] as Map).cast<String, dynamic>()),
      matcher: map['matcher'] as String,
    );
  }
}


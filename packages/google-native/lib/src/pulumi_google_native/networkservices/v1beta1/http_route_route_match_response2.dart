// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'http_route_header_match_response2.dart';
import 'http_route_query_parameter_match_response2.dart';

/// RouteMatch defines specifications used to match requests. If multiple match types are set, this RouteMatch will match if ALL type of matches are matched.
class HttpRouteRouteMatchResponse2 {
  /// The HTTP request path value should exactly match this value. Only one of full_path_match, prefix_match, or regex_match should be used.
  final String fullPathMatch;

  /// Specifies a list of HTTP request headers to match against. ALL of the supplied headers must be matched.
  final List<HttpRouteHeaderMatchResponse2> headers;

  /// Specifies if prefix_match and full_path_match matches are case sensitive. The default value is false.
  final bool ignoreCase;

  /// The HTTP request path value must begin with specified prefix_match. prefix_match must begin with a /. Only one of full_path_match, prefix_match, or regex_match should be used.
  final String prefixMatch;

  /// Specifies a list of query parameters to match against. ALL of the query parameters must be matched.
  final List<HttpRouteQueryParameterMatchResponse2> queryParameters;

  /// The HTTP request path value must satisfy the regular expression specified by regex_match after removing any query parameters and anchor supplied with the original URL. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of full_path_match, prefix_match, or regex_match should be used.
  final String regexMatch;

  HttpRouteRouteMatchResponse2({
    required this.fullPathMatch,
    required this.headers,
    required this.ignoreCase,
    required this.prefixMatch,
    required this.queryParameters,
    required this.regexMatch,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fullPathMatch'] = fullPathMatch;
    map['headers'] =
        Input.encodeList<HttpRouteHeaderMatchResponse2, Map<String, dynamic>>(
            headers, (value) => value.toMap());
    map['ignoreCase'] = ignoreCase;
    map['prefixMatch'] = prefixMatch;
    map['queryParameters'] = Input.encodeList<
        HttpRouteQueryParameterMatchResponse2,
        Map<String, dynamic>>(queryParameters, (value) => value.toMap());
    map['regexMatch'] = regexMatch;
    return map;
  }

  factory HttpRouteRouteMatchResponse2.fromMap(Map<String, dynamic> map) {
    return HttpRouteRouteMatchResponse2(
      fullPathMatch: map['fullPathMatch'] as String,
      headers: Input.decodeList<HttpRouteHeaderMatchResponse2>(
          map['headers'],
          (value) => HttpRouteHeaderMatchResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      ignoreCase: map['ignoreCase'] as bool,
      prefixMatch: map['prefixMatch'] as String,
      queryParameters: Input.decodeList<HttpRouteQueryParameterMatchResponse2>(
          map['queryParameters'],
          (value) => HttpRouteQueryParameterMatchResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      regexMatch: map['regexMatch'] as String,
    );
  }
}

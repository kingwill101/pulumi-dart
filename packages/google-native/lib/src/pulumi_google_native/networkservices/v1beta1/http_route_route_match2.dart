// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'http_route_header_match2.dart';
import 'http_route_query_parameter_match2.dart';

/// RouteMatch defines specifications used to match requests. If multiple match types are set, this RouteMatch will match if ALL type of matches are matched.
class HttpRouteRouteMatch2 {
  /// The HTTP request path value should exactly match this value. Only one of full_path_match, prefix_match, or regex_match should be used.
  final String? fullPathMatch;

  /// Specifies a list of HTTP request headers to match against. ALL of the supplied headers must be matched.
  final List<HttpRouteHeaderMatch2>? headers;

  /// Specifies if prefix_match and full_path_match matches are case sensitive. The default value is false.
  final bool? ignoreCase;

  /// The HTTP request path value must begin with specified prefix_match. prefix_match must begin with a /. Only one of full_path_match, prefix_match, or regex_match should be used.
  final String? prefixMatch;

  /// Specifies a list of query parameters to match against. ALL of the query parameters must be matched.
  final List<HttpRouteQueryParameterMatch2>? queryParameters;

  /// The HTTP request path value must satisfy the regular expression specified by regex_match after removing any query parameters and anchor supplied with the original URL. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of full_path_match, prefix_match, or regex_match should be used.
  final String? regexMatch;

  HttpRouteRouteMatch2({
    this.fullPathMatch,
    this.headers,
    this.ignoreCase,
    this.prefixMatch,
    this.queryParameters,
    this.regexMatch,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fullPathMatchValue = fullPathMatch;
    if (fullPathMatchValue != null) {
      map['fullPathMatch'] = fullPathMatchValue;
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] =
          Input.encodeList<HttpRouteHeaderMatch2, Map<String, dynamic>>(
              headersValue, (value) => value.toMap());
    }
    final ignoreCaseValue = ignoreCase;
    if (ignoreCaseValue != null) {
      map['ignoreCase'] = ignoreCaseValue;
    }
    final prefixMatchValue = prefixMatch;
    if (prefixMatchValue != null) {
      map['prefixMatch'] = prefixMatchValue;
    }
    final queryParametersValue = queryParameters;
    if (queryParametersValue != null) {
      map['queryParameters'] =
          Input.encodeList<HttpRouteQueryParameterMatch2, Map<String, dynamic>>(
              queryParametersValue, (value) => value.toMap());
    }
    final regexMatchValue = regexMatch;
    if (regexMatchValue != null) {
      map['regexMatch'] = regexMatchValue;
    }
    return map;
  }

  factory HttpRouteRouteMatch2.fromMap(Map<String, dynamic> map) {
    return HttpRouteRouteMatch2(
      fullPathMatch:
          map['fullPathMatch'] == null ? null : map['fullPathMatch'] as String,
      headers: map['headers'] == null
          ? null
          : Input.decodeList<HttpRouteHeaderMatch2>(
              map['headers'],
              (value) => HttpRouteHeaderMatch2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ignoreCase: map['ignoreCase'] == null ? null : map['ignoreCase'] as bool,
      prefixMatch:
          map['prefixMatch'] == null ? null : map['prefixMatch'] as String,
      queryParameters: map['queryParameters'] == null
          ? null
          : Input.decodeList<HttpRouteQueryParameterMatch2>(
              map['queryParameters'],
              (value) => HttpRouteQueryParameterMatch2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      regexMatch:
          map['regexMatch'] == null ? null : map['regexMatch'] as String,
    );
  }
}

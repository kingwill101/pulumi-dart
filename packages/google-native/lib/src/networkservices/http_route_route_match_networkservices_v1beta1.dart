// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_header_match_networkservices_v1beta1.dart';
import 'http_route_query_parameter_match_networkservices_v1beta1.dart';

/// RouteMatch defines specifications used to match requests. If multiple match types are set, this RouteMatch will match if ALL type of matches are matched.
class HttpRouteRouteMatchNetworkservicesV1beta1 {
  /// The HTTP request path value should exactly match this value. Only one of full_path_match, prefix_match, or regex_match should be used.
  final String? fullPathMatch;

  /// Specifies a list of HTTP request headers to match against. ALL of the supplied headers must be matched.
  final List<HttpRouteHeaderMatchNetworkservicesV1beta1>? headers;

  /// Specifies if prefix_match and full_path_match matches are case sensitive. The default value is false.
  final bool? ignoreCase;

  /// The HTTP request path value must begin with specified prefix_match. prefix_match must begin with a /. Only one of full_path_match, prefix_match, or regex_match should be used.
  final String? prefixMatch;

  /// Specifies a list of query parameters to match against. ALL of the query parameters must be matched.
  final List<HttpRouteQueryParameterMatchNetworkservicesV1beta1>?
      queryParameters;

  /// The HTTP request path value must satisfy the regular expression specified by regex_match after removing any query parameters and anchor supplied with the original URL. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of full_path_match, prefix_match, or regex_match should be used.
  final String? regexMatch;

  /// Creates a new [HttpRouteRouteMatchNetworkservicesV1beta1].
  /// [fullPathMatch] The HTTP request path value should exactly match this value. Only one of full_path_match, prefix_match, or regex_match should be used.
  /// [headers] Specifies a list of HTTP request headers to match against. ALL of the supplied headers must be matched.
  /// [ignoreCase] Specifies if prefix_match and full_path_match matches are case sensitive. The default value is false.
  /// [prefixMatch] The HTTP request path value must begin with specified prefix_match. prefix_match must begin with a /. Only one of full_path_match, prefix_match, or regex_match should be used.
  /// [queryParameters] Specifies a list of query parameters to match against. ALL of the query parameters must be matched.
  /// [regexMatch] The HTTP request path value must satisfy the regular expression specified by regex_match after removing any query parameters and anchor supplied with the original URL. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of full_path_match, prefix_match, or regex_match should be used.
  HttpRouteRouteMatchNetworkservicesV1beta1({
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
      map['headers'] = pulumi.Input.encodeList<
          HttpRouteHeaderMatchNetworkservicesV1beta1,
          Map<String, dynamic>>(headersValue, (value) => value.toMap());
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
      map['queryParameters'] = pulumi.Input.encodeList<
          HttpRouteQueryParameterMatchNetworkservicesV1beta1,
          Map<String, dynamic>>(queryParametersValue, (value) => value.toMap());
    }
    final regexMatchValue = regexMatch;
    if (regexMatchValue != null) {
      map['regexMatch'] = regexMatchValue;
    }
    return map;
  }

  factory HttpRouteRouteMatchNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteRouteMatchNetworkservicesV1beta1(
      fullPathMatch:
          map['fullPathMatch'] == null ? null : map['fullPathMatch'] as String,
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<HttpRouteHeaderMatchNetworkservicesV1beta1>(
              map['headers'],
              (value) => HttpRouteHeaderMatchNetworkservicesV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ignoreCase: map['ignoreCase'] == null ? null : map['ignoreCase'] as bool,
      prefixMatch:
          map['prefixMatch'] == null ? null : map['prefixMatch'] as String,
      queryParameters: map['queryParameters'] == null
          ? null
          : pulumi.Input.decodeList<
                  HttpRouteQueryParameterMatchNetworkservicesV1beta1>(
              map['queryParameters'],
              (value) =>
                  HttpRouteQueryParameterMatchNetworkservicesV1beta1.fromMap(
                      (value as Map).cast<String, dynamic>())),
      regexMatch:
          map['regexMatch'] == null ? null : map['regexMatch'] as String,
    );
  }
}

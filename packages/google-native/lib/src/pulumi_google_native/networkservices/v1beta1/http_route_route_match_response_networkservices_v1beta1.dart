// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_header_match_response_networkservices_v1beta1.dart';
import 'http_route_query_parameter_match_response_networkservices_v1beta1.dart';

/// RouteMatch defines specifications used to match requests. If multiple match types are set, this RouteMatch will match if ALL type of matches are matched.
class HttpRouteRouteMatchResponseNetworkservicesV1beta1 {
  /// The HTTP request path value should exactly match this value. Only one of full_path_match, prefix_match, or regex_match should be used.
  final String fullPathMatch;

  /// Specifies a list of HTTP request headers to match against. ALL of the supplied headers must be matched.
  final List<HttpRouteHeaderMatchResponseNetworkservicesV1beta1> headers;

  /// Specifies if prefix_match and full_path_match matches are case sensitive. The default value is false.
  final bool ignoreCase;

  /// The HTTP request path value must begin with specified prefix_match. prefix_match must begin with a /. Only one of full_path_match, prefix_match, or regex_match should be used.
  final String prefixMatch;

  /// Specifies a list of query parameters to match against. ALL of the query parameters must be matched.
  final List<HttpRouteQueryParameterMatchResponseNetworkservicesV1beta1>
      queryParameters;

  /// The HTTP request path value must satisfy the regular expression specified by regex_match after removing any query parameters and anchor supplied with the original URL. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of full_path_match, prefix_match, or regex_match should be used.
  final String regexMatch;

  HttpRouteRouteMatchResponseNetworkservicesV1beta1({
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
    map['headers'] = pulumi.Input.encodeList<
        HttpRouteHeaderMatchResponseNetworkservicesV1beta1,
        Map<String, dynamic>>(headers, (value) => value.toMap());
    map['ignoreCase'] = ignoreCase;
    map['prefixMatch'] = prefixMatch;
    map['queryParameters'] = pulumi.Input.encodeList<
        HttpRouteQueryParameterMatchResponseNetworkservicesV1beta1,
        Map<String, dynamic>>(queryParameters, (value) => value.toMap());
    map['regexMatch'] = regexMatch;
    return map;
  }

  factory HttpRouteRouteMatchResponseNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteRouteMatchResponseNetworkservicesV1beta1(
      fullPathMatch: map['fullPathMatch'] as String,
      headers: pulumi.Input.decodeList<
              HttpRouteHeaderMatchResponseNetworkservicesV1beta1>(
          map['headers'],
          (value) => HttpRouteHeaderMatchResponseNetworkservicesV1beta1.fromMap(
              (value as Map).cast<String, dynamic>())),
      ignoreCase: map['ignoreCase'] as bool,
      prefixMatch: map['prefixMatch'] as String,
      queryParameters: pulumi.Input.decodeList<
              HttpRouteQueryParameterMatchResponseNetworkservicesV1beta1>(
          map['queryParameters'],
          (value) => HttpRouteQueryParameterMatchResponseNetworkservicesV1beta1
              .fromMap((value as Map).cast<String, dynamic>())),
      regexMatch: map['regexMatch'] as String,
    );
  }
}

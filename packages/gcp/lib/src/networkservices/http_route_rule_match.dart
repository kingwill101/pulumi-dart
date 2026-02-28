// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_rule_match_header.dart';
import 'http_route_rule_match_query_parameter.dart';

class HttpRouteRuleMatch {
  /// The HTTP request path value should exactly match this value.
  final String? fullPathMatch;

  /// Specifies a list of HTTP request headers to match against.
  /// Structure is documented below.
  final List<HttpRouteRuleMatchHeader>? headers;

  /// Specifies if prefixMatch and fullPathMatch matches are case sensitive. The default value is false.
  final bool? ignoreCase;

  /// The HTTP request path value must begin with specified prefixMatch. prefixMatch must begin with a /.
  final String? prefixMatch;

  /// Specifies a list of query parameters to match against.
  /// Structure is documented below.
  final List<HttpRouteRuleMatchQueryParameter>? queryParameters;

  /// The HTTP request path value must satisfy the regular expression specified by regexMatch after removing any query parameters and anchor supplied with the original URL. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax
  final String? regexMatch;

  /// Creates a new [HttpRouteRuleMatch].
  /// [fullPathMatch] The HTTP request path value should exactly match this value.
  /// [headers] Specifies a list of HTTP request headers to match against.
  /// [ignoreCase] Specifies if prefixMatch and fullPathMatch matches are case sensitive. The default value is false.
  /// [prefixMatch] The HTTP request path value must begin with specified prefixMatch. prefixMatch must begin with a /.
  /// [queryParameters] Specifies a list of query parameters to match against.
  /// [regexMatch] The HTTP request path value must satisfy the regular expression specified by regexMatch after removing any query parameters and anchor supplied with the original URL. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax
  HttpRouteRuleMatch({
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
      map['headers'] = pulumi.Input.encodeList<HttpRouteRuleMatchHeader,
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
          HttpRouteRuleMatchQueryParameter,
          Map<String, dynamic>>(queryParametersValue, (value) => value.toMap());
    }
    final regexMatchValue = regexMatch;
    if (regexMatchValue != null) {
      map['regexMatch'] = regexMatchValue;
    }
    return map;
  }

  factory HttpRouteRuleMatch.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleMatch(
      fullPathMatch:
          map['fullPathMatch'] == null ? null : map['fullPathMatch'] as String,
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<HttpRouteRuleMatchHeader>(
              map['headers'],
              (value) => HttpRouteRuleMatchHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ignoreCase: map['ignoreCase'] == null ? null : map['ignoreCase'] as bool,
      prefixMatch:
          map['prefixMatch'] == null ? null : map['prefixMatch'] as String,
      queryParameters: map['queryParameters'] == null
          ? null
          : pulumi.Input.decodeList<HttpRouteRuleMatchQueryParameter>(
              map['queryParameters'],
              (value) => HttpRouteRuleMatchQueryParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      regexMatch:
          map['regexMatch'] == null ? null : map['regexMatch'] as String,
    );
  }
}

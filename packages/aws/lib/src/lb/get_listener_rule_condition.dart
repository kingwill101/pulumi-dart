// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_rule_condition_host_header.dart';
import 'get_listener_rule_condition_http_header.dart';
import 'get_listener_rule_condition_http_request_method.dart';
import 'get_listener_rule_condition_path_pattern.dart';
import 'get_listener_rule_condition_query_string.dart';
import 'get_listener_rule_condition_source_ip.dart';

class GetListenerRuleCondition {
  /// Host header patterns to match.
  /// Detailed below.
  final List<GetListenerRuleConditionHostHeader>? hostHeaders;

  /// HTTP header and values to match.
  /// Detailed below.
  final List<GetListenerRuleConditionHttpHeader>? httpHeaders;

  /// Contains a single attribute `values`, which contains a set of HTTP request methods.
  final List<GetListenerRuleConditionHttpRequestMethod>? httpRequestMethods;

  /// Path patterns to compare against the request URL.
  /// Detailed below.
  final List<GetListenerRuleConditionPathPattern>? pathPatterns;

  /// Query string parameters to match.
  /// Detailed below.
  final List<GetListenerRuleConditionQueryString>? queryStrings;

  /// Contains a single attribute `values`, which contains a set of source IPs in CIDR notation.
  final List<GetListenerRuleConditionSourceIp>? sourceIps;

  /// Creates a new [GetListenerRuleCondition].
  /// [hostHeaders] Host header patterns to match.
  /// [httpHeaders] HTTP header and values to match.
  /// [httpRequestMethods] Contains a single attribute `values`, which contains a set of HTTP request methods.
  /// [pathPatterns] Path patterns to compare against the request URL.
  /// [queryStrings] Query string parameters to match.
  /// [sourceIps] Contains a single attribute `values`, which contains a set of source IPs in CIDR notation.
  GetListenerRuleCondition({
    this.hostHeaders,
    this.httpHeaders,
    this.httpRequestMethods,
    this.pathPatterns,
    this.queryStrings,
    this.sourceIps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostHeadersValue = hostHeaders;
    if (hostHeadersValue != null) {
      map['hostHeaders'] = pulumi.Input.encodeList<
          GetListenerRuleConditionHostHeader,
          Map<String, dynamic>>(hostHeadersValue, (value) => value.toMap());
    }
    final httpHeadersValue = httpHeaders;
    if (httpHeadersValue != null) {
      map['httpHeaders'] = pulumi.Input.encodeList<
          GetListenerRuleConditionHttpHeader,
          Map<String, dynamic>>(httpHeadersValue, (value) => value.toMap());
    }
    final httpRequestMethodsValue = httpRequestMethods;
    if (httpRequestMethodsValue != null) {
      map['httpRequestMethods'] = pulumi.Input.encodeList<
              GetListenerRuleConditionHttpRequestMethod, Map<String, dynamic>>(
          httpRequestMethodsValue, (value) => value.toMap());
    }
    final pathPatternsValue = pathPatterns;
    if (pathPatternsValue != null) {
      map['pathPatterns'] = pulumi.Input.encodeList<
          GetListenerRuleConditionPathPattern,
          Map<String, dynamic>>(pathPatternsValue, (value) => value.toMap());
    }
    final queryStringsValue = queryStrings;
    if (queryStringsValue != null) {
      map['queryStrings'] = pulumi.Input.encodeList<
          GetListenerRuleConditionQueryString,
          Map<String, dynamic>>(queryStringsValue, (value) => value.toMap());
    }
    final sourceIpsValue = sourceIps;
    if (sourceIpsValue != null) {
      map['sourceIps'] = pulumi.Input.encodeList<
          GetListenerRuleConditionSourceIp,
          Map<String, dynamic>>(sourceIpsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GetListenerRuleCondition.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleCondition(
      hostHeaders: map['hostHeaders'] == null
          ? null
          : pulumi.Input.decodeList<GetListenerRuleConditionHostHeader>(
              map['hostHeaders'],
              (value) => GetListenerRuleConditionHostHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
      httpHeaders: map['httpHeaders'] == null
          ? null
          : pulumi.Input.decodeList<GetListenerRuleConditionHttpHeader>(
              map['httpHeaders'],
              (value) => GetListenerRuleConditionHttpHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
      httpRequestMethods: map['httpRequestMethods'] == null
          ? null
          : pulumi.Input.decodeList<GetListenerRuleConditionHttpRequestMethod>(
              map['httpRequestMethods'],
              (value) => GetListenerRuleConditionHttpRequestMethod.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pathPatterns: map['pathPatterns'] == null
          ? null
          : pulumi.Input.decodeList<GetListenerRuleConditionPathPattern>(
              map['pathPatterns'],
              (value) => GetListenerRuleConditionPathPattern.fromMap(
                  (value as Map).cast<String, dynamic>())),
      queryStrings: map['queryStrings'] == null
          ? null
          : pulumi.Input.decodeList<GetListenerRuleConditionQueryString>(
              map['queryStrings'],
              (value) => GetListenerRuleConditionQueryString.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceIps: map['sourceIps'] == null
          ? null
          : pulumi.Input.decodeList<GetListenerRuleConditionSourceIp>(
              map['sourceIps'],
              (value) => GetListenerRuleConditionSourceIp.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

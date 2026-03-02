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
  final pulumi.Input<List<GetListenerRuleConditionHostHeader>>? hostHeaders;
  /// HTTP header and values to match.
  /// Detailed below.
  final pulumi.Input<List<GetListenerRuleConditionHttpHeader>>? httpHeaders;
  /// Contains a single attribute `values`, which contains a set of HTTP request methods.
  final pulumi.Input<List<GetListenerRuleConditionHttpRequestMethod>>? httpRequestMethods;
  /// Path patterns to compare against the request URL.
  /// Detailed below.
  final pulumi.Input<List<GetListenerRuleConditionPathPattern>>? pathPatterns;
  /// Query string parameters to match.
  /// Detailed below.
  final pulumi.Input<List<GetListenerRuleConditionQueryString>>? queryStrings;
  /// Contains a single attribute `values`, which contains a set of source IPs in CIDR notation.
  final pulumi.Input<List<GetListenerRuleConditionSourceIp>>? sourceIps;

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
    return <String, dynamic>{
      'hostHeaders': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleConditionHostHeader>, List<Map<String, dynamic>>>(hostHeaders, (value) => pulumi.Input.encodeList<GetListenerRuleConditionHostHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpHeaders': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleConditionHttpHeader>, List<Map<String, dynamic>>>(httpHeaders, (value) => pulumi.Input.encodeList<GetListenerRuleConditionHttpHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpRequestMethods': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleConditionHttpRequestMethod>, List<Map<String, dynamic>>>(httpRequestMethods, (value) => pulumi.Input.encodeList<GetListenerRuleConditionHttpRequestMethod, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pathPatterns': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleConditionPathPattern>, List<Map<String, dynamic>>>(pathPatterns, (value) => pulumi.Input.encodeList<GetListenerRuleConditionPathPattern, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryStrings': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleConditionQueryString>, List<Map<String, dynamic>>>(queryStrings, (value) => pulumi.Input.encodeList<GetListenerRuleConditionQueryString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceIps': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleConditionSourceIp>, List<Map<String, dynamic>>>(sourceIps, (value) => pulumi.Input.encodeList<GetListenerRuleConditionSourceIp, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetListenerRuleCondition.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleCondition(
      hostHeaders: map['hostHeaders'] == null ? null : ((pulumi.Input.decodeList<GetListenerRuleConditionHostHeader>(map['hostHeaders']!, (value) => GetListenerRuleConditionHostHeader.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      httpHeaders: map['httpHeaders'] == null ? null : ((pulumi.Input.decodeList<GetListenerRuleConditionHttpHeader>(map['httpHeaders']!, (value) => GetListenerRuleConditionHttpHeader.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      httpRequestMethods: map['httpRequestMethods'] == null ? null : ((pulumi.Input.decodeList<GetListenerRuleConditionHttpRequestMethod>(map['httpRequestMethods']!, (value) => GetListenerRuleConditionHttpRequestMethod.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      pathPatterns: map['pathPatterns'] == null ? null : ((pulumi.Input.decodeList<GetListenerRuleConditionPathPattern>(map['pathPatterns']!, (value) => GetListenerRuleConditionPathPattern.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      queryStrings: map['queryStrings'] == null ? null : ((pulumi.Input.decodeList<GetListenerRuleConditionQueryString>(map['queryStrings']!, (value) => GetListenerRuleConditionQueryString.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      sourceIps: map['sourceIps'] == null ? null : ((pulumi.Input.decodeList<GetListenerRuleConditionSourceIp>(map['sourceIps']!, (value) => GetListenerRuleConditionSourceIp.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}


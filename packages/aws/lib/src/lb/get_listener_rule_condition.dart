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
    return <String, dynamic>{
      'hostHeaders': ?hostHeaders == null ? null : pulumi.Input.encodeList<GetListenerRuleConditionHostHeader, Map<String, dynamic>>(hostHeaders!, (value) => value.toMap()),
      'httpHeaders': ?httpHeaders == null ? null : pulumi.Input.encodeList<GetListenerRuleConditionHttpHeader, Map<String, dynamic>>(httpHeaders!, (value) => value.toMap()),
      'httpRequestMethods': ?httpRequestMethods == null ? null : pulumi.Input.encodeList<GetListenerRuleConditionHttpRequestMethod, Map<String, dynamic>>(httpRequestMethods!, (value) => value.toMap()),
      'pathPatterns': ?pathPatterns == null ? null : pulumi.Input.encodeList<GetListenerRuleConditionPathPattern, Map<String, dynamic>>(pathPatterns!, (value) => value.toMap()),
      'queryStrings': ?queryStrings == null ? null : pulumi.Input.encodeList<GetListenerRuleConditionQueryString, Map<String, dynamic>>(queryStrings!, (value) => value.toMap()),
      'sourceIps': ?sourceIps == null ? null : pulumi.Input.encodeList<GetListenerRuleConditionSourceIp, Map<String, dynamic>>(sourceIps!, (value) => value.toMap()),
    };
  }

  factory GetListenerRuleCondition.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleCondition(
      hostHeaders: map['hostHeaders'] == null ? null : pulumi.Input.decodeList<GetListenerRuleConditionHostHeader>(map['hostHeaders'], (value) => GetListenerRuleConditionHostHeader.fromMap((value as Map).cast<String, dynamic>())),
      httpHeaders: map['httpHeaders'] == null ? null : pulumi.Input.decodeList<GetListenerRuleConditionHttpHeader>(map['httpHeaders'], (value) => GetListenerRuleConditionHttpHeader.fromMap((value as Map).cast<String, dynamic>())),
      httpRequestMethods: map['httpRequestMethods'] == null ? null : pulumi.Input.decodeList<GetListenerRuleConditionHttpRequestMethod>(map['httpRequestMethods'], (value) => GetListenerRuleConditionHttpRequestMethod.fromMap((value as Map).cast<String, dynamic>())),
      pathPatterns: map['pathPatterns'] == null ? null : pulumi.Input.decodeList<GetListenerRuleConditionPathPattern>(map['pathPatterns'], (value) => GetListenerRuleConditionPathPattern.fromMap((value as Map).cast<String, dynamic>())),
      queryStrings: map['queryStrings'] == null ? null : pulumi.Input.decodeList<GetListenerRuleConditionQueryString>(map['queryStrings'], (value) => GetListenerRuleConditionQueryString.fromMap((value as Map).cast<String, dynamic>())),
      sourceIps: map['sourceIps'] == null ? null : pulumi.Input.decodeList<GetListenerRuleConditionSourceIp>(map['sourceIps'], (value) => GetListenerRuleConditionSourceIp.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


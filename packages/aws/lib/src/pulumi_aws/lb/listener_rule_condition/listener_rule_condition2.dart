// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../listener_rule_condition_host_header/listener_rule_condition_host_header2.dart';
import '../listener_rule_condition_http_header/listener_rule_condition_http_header2.dart';
import '../listener_rule_condition_http_request_method/listener_rule_condition_http_request_method2.dart';
import '../listener_rule_condition_path_pattern/listener_rule_condition_path_pattern2.dart';
import '../listener_rule_condition_query_string/listener_rule_condition_query_string2.dart';
import '../listener_rule_condition_source_ip/listener_rule_condition_source_ip2.dart';

class ListenerRuleCondition2 {
  /// Host header patterns to match. Host Header block fields documented below.
  final ListenerRuleConditionHostHeader2? hostHeader;

  /// HTTP headers to match. HTTP Header block fields documented below.
  final ListenerRuleConditionHttpHeader2? httpHeader;

  /// Contains a single `values` item which is a list of HTTP request methods or verbs to match. Maximum size is 40 characters. Only allowed characters are A-Z, hyphen (-) and underscore (\_). Comparison is case sensitive. Wildcards are not supported. Only one needs to match for the condition to be satisfied. AWS recommends that GET and HEAD requests are routed in the same way because the response to a HEAD request may be cached.
  final ListenerRuleConditionHttpRequestMethod2? httpRequestMethod;

  /// Path patterns to match against the request URL. Path Pattern block fields documented below.
  final ListenerRuleConditionPathPattern2? pathPattern;

  /// Query strings to match. Query String block fields documented below.
  final List<ListenerRuleConditionQueryString2>? queryStrings;

  /// Contains a single `values` item which is a list of source IP CIDR notations to match. You can use both IPv4 and IPv6 addresses. Wildcards are not supported. Condition is satisfied if the source IP address of the request matches one of the CIDR blocks. Condition is not satisfied by the addresses in the `X-Forwarded-For` header, use `http_header` condition instead.
  ///
  /// > **NOTE::** Exactly one of `host_header`, `http_header`, `http_request_method`, `path_pattern`, `query_string` or `source_ip` must be set per condition.
  final ListenerRuleConditionSourceIp2? sourceIp;

  ListenerRuleCondition2({
    this.hostHeader,
    this.httpHeader,
    this.httpRequestMethod,
    this.pathPattern,
    this.queryStrings,
    this.sourceIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostHeaderValue = hostHeader;
    if (hostHeaderValue != null) {
      map['hostHeader'] = hostHeaderValue.toMap();
    }
    final httpHeaderValue = httpHeader;
    if (httpHeaderValue != null) {
      map['httpHeader'] = httpHeaderValue.toMap();
    }
    final httpRequestMethodValue = httpRequestMethod;
    if (httpRequestMethodValue != null) {
      map['httpRequestMethod'] = httpRequestMethodValue.toMap();
    }
    final pathPatternValue = pathPattern;
    if (pathPatternValue != null) {
      map['pathPattern'] = pathPatternValue.toMap();
    }
    final queryStringsValue = queryStrings;
    if (queryStringsValue != null) {
      map['queryStrings'] = Input.encodeList<ListenerRuleConditionQueryString2,
          Map<String, dynamic>>(queryStringsValue, (value) => value.toMap());
    }
    final sourceIpValue = sourceIp;
    if (sourceIpValue != null) {
      map['sourceIp'] = sourceIpValue.toMap();
    }
    return map;
  }

  factory ListenerRuleCondition2.fromMap(Map<String, dynamic> map) {
    return ListenerRuleCondition2(
      hostHeader: map['hostHeader'] == null
          ? null
          : ListenerRuleConditionHostHeader2.fromMap(
              (map['hostHeader'] as Map).cast<String, dynamic>()),
      httpHeader: map['httpHeader'] == null
          ? null
          : ListenerRuleConditionHttpHeader2.fromMap(
              (map['httpHeader'] as Map).cast<String, dynamic>()),
      httpRequestMethod: map['httpRequestMethod'] == null
          ? null
          : ListenerRuleConditionHttpRequestMethod2.fromMap(
              (map['httpRequestMethod'] as Map).cast<String, dynamic>()),
      pathPattern: map['pathPattern'] == null
          ? null
          : ListenerRuleConditionPathPattern2.fromMap(
              (map['pathPattern'] as Map).cast<String, dynamic>()),
      queryStrings: map['queryStrings'] == null
          ? null
          : Input.decodeList<ListenerRuleConditionQueryString2>(
              map['queryStrings'],
              (value) => ListenerRuleConditionQueryString2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceIp: map['sourceIp'] == null
          ? null
          : ListenerRuleConditionSourceIp2.fromMap(
              (map['sourceIp'] as Map).cast<String, dynamic>()),
    );
  }
}

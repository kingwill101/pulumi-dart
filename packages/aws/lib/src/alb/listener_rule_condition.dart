// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_condition_host_header.dart';
import 'listener_rule_condition_http_header.dart';
import 'listener_rule_condition_http_request_method.dart';
import 'listener_rule_condition_path_pattern.dart';
import 'listener_rule_condition_query_string.dart';
import 'listener_rule_condition_source_ip.dart';

class ListenerRuleCondition {
  /// Host header patterns to match. Host Header block fields documented below.
  final ListenerRuleConditionHostHeader? hostHeader;

  /// HTTP headers to match. HTTP Header block fields documented below.
  final ListenerRuleConditionHttpHeader? httpHeader;

  /// Contains a single `values` item which is a list of HTTP request methods or verbs to match. Maximum size is 40 characters. Only allowed characters are A-Z, hyphen (-) and underscore (\_). Comparison is case sensitive. Wildcards are not supported. Only one needs to match for the condition to be satisfied. AWS recommends that GET and HEAD requests are routed in the same way because the response to a HEAD request may be cached.
  final ListenerRuleConditionHttpRequestMethod? httpRequestMethod;

  /// Path patterns to match against the request URL. Path Pattern block fields documented below.
  final ListenerRuleConditionPathPattern? pathPattern;

  /// Query strings to match. Query String block fields documented below.
  final List<ListenerRuleConditionQueryString>? queryStrings;

  /// Contains a single `values` item which is a list of source IP CIDR notations to match. You can use both IPv4 and IPv6 addresses. Wildcards are not supported. Condition is satisfied if the source IP address of the request matches one of the CIDR blocks. Condition is not satisfied by the addresses in the `X-Forwarded-For` header, use `http_header` condition instead.
  ///
  /// > **NOTE::** Exactly one of `host_header`, `http_header`, `http_request_method`, `path_pattern`, `query_string` or `source_ip` must be set per condition.
  final ListenerRuleConditionSourceIp? sourceIp;

  /// Creates a new [ListenerRuleCondition].
  /// [hostHeader] Host header patterns to match. Host Header block fields documented below.
  /// [httpHeader] HTTP headers to match. HTTP Header block fields documented below.
  /// [httpRequestMethod] Contains a single `values` item which is a list of HTTP request methods or verbs to match. Maximum size is 40 characters. Only allowed characters are A-Z, hyphen (-) and underscore (\_). Comparison is case sensitive. Wildcards are not supported. Only one needs to match for the condition to be satisfied. AWS recommends that GET and HEAD requests are routed in the same way because the response to a HEAD request may be cached.
  /// [pathPattern] Path patterns to match against the request URL. Path Pattern block fields documented below.
  /// [queryStrings] Query strings to match. Query String block fields documented below.
  /// [sourceIp] Contains a single `values` item which is a list of source IP CIDR notations to match. You can use both IPv4 and IPv6 addresses. Wildcards are not supported. Condition is satisfied if the source IP address of the request matches one of the CIDR blocks. Condition is not satisfied by the addresses in the `X-Forwarded-For` header, use `http_header` condition instead.
  ListenerRuleCondition({
    this.hostHeader,
    this.httpHeader,
    this.httpRequestMethod,
    this.pathPattern,
    this.queryStrings,
    this.sourceIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostHeader': ?hostHeader == null ? null : hostHeader!.toMap(),
      'httpHeader': ?httpHeader == null ? null : httpHeader!.toMap(),
      'httpRequestMethod': ?httpRequestMethod == null
          ? null
          : httpRequestMethod!.toMap(),
      'pathPattern': ?pathPattern == null ? null : pathPattern!.toMap(),
      'queryStrings': ?queryStrings == null
          ? null
          : pulumi.Input.encodeList<
              ListenerRuleConditionQueryString,
              Map<String, dynamic>
            >(queryStrings!, (value) => value.toMap()),
      'sourceIp': ?sourceIp == null ? null : sourceIp!.toMap(),
    };
  }

  factory ListenerRuleCondition.fromMap(Map<String, dynamic> map) {
    return ListenerRuleCondition(
      hostHeader: map['hostHeader'] == null
          ? null
          : ListenerRuleConditionHostHeader.fromMap(
              (map['hostHeader'] as Map).cast<String, dynamic>(),
            ),
      httpHeader: map['httpHeader'] == null
          ? null
          : ListenerRuleConditionHttpHeader.fromMap(
              (map['httpHeader'] as Map).cast<String, dynamic>(),
            ),
      httpRequestMethod: map['httpRequestMethod'] == null
          ? null
          : ListenerRuleConditionHttpRequestMethod.fromMap(
              (map['httpRequestMethod'] as Map).cast<String, dynamic>(),
            ),
      pathPattern: map['pathPattern'] == null
          ? null
          : ListenerRuleConditionPathPattern.fromMap(
              (map['pathPattern'] as Map).cast<String, dynamic>(),
            ),
      queryStrings: map['queryStrings'] == null
          ? null
          : pulumi.Input.decodeList<ListenerRuleConditionQueryString>(
              map['queryStrings'],
              (value) => ListenerRuleConditionQueryString.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      sourceIp: map['sourceIp'] == null
          ? null
          : ListenerRuleConditionSourceIp.fromMap(
              (map['sourceIp'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

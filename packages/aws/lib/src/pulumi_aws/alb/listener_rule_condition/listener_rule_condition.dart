// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../listener_rule_condition_host_header/listener_rule_condition_host_header.dart';
import '../listener_rule_condition_http_header/listener_rule_condition_http_header.dart';
import '../listener_rule_condition_http_request_method/listener_rule_condition_http_request_method.dart';
import '../listener_rule_condition_path_pattern/listener_rule_condition_path_pattern.dart';
import '../listener_rule_condition_query_string/listener_rule_condition_query_string.dart';
import '../listener_rule_condition_source_ip/listener_rule_condition_source_ip.dart';

class ListenerRuleCondition {
  /// Host header patterns to match. Host Header block fields documented below.
  final ListenerRuleConditionHostHeader? hostHeader;

  /// HTTP headers to match. HTTP Header block fields documented below.
  final ListenerRuleConditionHttpHeader? httpHeader;

  /// Contains a single <span pulumi-lang-nodejs="`values`" pulumi-lang-dotnet="`Values`" pulumi-lang-go="`values`" pulumi-lang-python="`values`" pulumi-lang-yaml="`values`" pulumi-lang-java="`values`">`values`</span> item which is a list of HTTP request methods or verbs to match. Maximum size is 40 characters. Only allowed characters are A-Z, hyphen (-) and underscore (\_). Comparison is case sensitive. Wildcards are not supported. Only one needs to match for the condition to be satisfied. AWS recommends that GET and HEAD requests are routed in the same way because the response to a HEAD request may be cached.
  final ListenerRuleConditionHttpRequestMethod? httpRequestMethod;

  /// Path patterns to match against the request URL. Path Pattern block fields documented below.
  final ListenerRuleConditionPathPattern? pathPattern;

  /// Query strings to match. Query String block fields documented below.
  final List<ListenerRuleConditionQueryString>? queryStrings;

  /// Contains a single <span pulumi-lang-nodejs="`values`" pulumi-lang-dotnet="`Values`" pulumi-lang-go="`values`" pulumi-lang-python="`values`" pulumi-lang-yaml="`values`" pulumi-lang-java="`values`">`values`</span> item which is a list of source IP CIDR notations to match. You can use both IPv4 and IPv6 addresses. Wildcards are not supported. Condition is satisfied if the source IP address of the request matches one of the CIDR blocks. Condition is not satisfied by the addresses in the `X-Forwarded-For` header, use <span pulumi-lang-nodejs="`httpHeader`" pulumi-lang-dotnet="`HttpHeader`" pulumi-lang-go="`httpHeader`" pulumi-lang-python="`http_header`" pulumi-lang-yaml="`httpHeader`" pulumi-lang-java="`httpHeader`">`http_header`</span> condition instead.
  ///
  /// > **NOTE::** Exactly one of <span pulumi-lang-nodejs="`hostHeader`" pulumi-lang-dotnet="`HostHeader`" pulumi-lang-go="`hostHeader`" pulumi-lang-python="`host_header`" pulumi-lang-yaml="`hostHeader`" pulumi-lang-java="`hostHeader`">`host_header`</span>, <span pulumi-lang-nodejs="`httpHeader`" pulumi-lang-dotnet="`HttpHeader`" pulumi-lang-go="`httpHeader`" pulumi-lang-python="`http_header`" pulumi-lang-yaml="`httpHeader`" pulumi-lang-java="`httpHeader`">`http_header`</span>, <span pulumi-lang-nodejs="`httpRequestMethod`" pulumi-lang-dotnet="`HttpRequestMethod`" pulumi-lang-go="`httpRequestMethod`" pulumi-lang-python="`http_request_method`" pulumi-lang-yaml="`httpRequestMethod`" pulumi-lang-java="`httpRequestMethod`">`http_request_method`</span>, <span pulumi-lang-nodejs="`pathPattern`" pulumi-lang-dotnet="`PathPattern`" pulumi-lang-go="`pathPattern`" pulumi-lang-python="`path_pattern`" pulumi-lang-yaml="`pathPattern`" pulumi-lang-java="`pathPattern`">`path_pattern`</span>, <span pulumi-lang-nodejs="`queryString`" pulumi-lang-dotnet="`QueryString`" pulumi-lang-go="`queryString`" pulumi-lang-python="`query_string`" pulumi-lang-yaml="`queryString`" pulumi-lang-java="`queryString`">`query_string`</span> or <span pulumi-lang-nodejs="`sourceIp`" pulumi-lang-dotnet="`SourceIp`" pulumi-lang-go="`sourceIp`" pulumi-lang-python="`source_ip`" pulumi-lang-yaml="`sourceIp`" pulumi-lang-java="`sourceIp`">`source_ip`</span> must be set per condition.
  final ListenerRuleConditionSourceIp? sourceIp;

  ListenerRuleCondition({
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
      map['queryStrings'] = Input.encodeList<ListenerRuleConditionQueryString,
          Map<String, dynamic>>(queryStringsValue, (value) => value.toMap());
    }
    final sourceIpValue = sourceIp;
    if (sourceIpValue != null) {
      map['sourceIp'] = sourceIpValue.toMap();
    }
    return map;
  }

  factory ListenerRuleCondition.fromMap(Map<String, dynamic> map) {
    return ListenerRuleCondition(
      hostHeader: map['hostHeader'] == null
          ? null
          : ListenerRuleConditionHostHeader.fromMap(
              (map['hostHeader'] as Map).cast<String, dynamic>()),
      httpHeader: map['httpHeader'] == null
          ? null
          : ListenerRuleConditionHttpHeader.fromMap(
              (map['httpHeader'] as Map).cast<String, dynamic>()),
      httpRequestMethod: map['httpRequestMethod'] == null
          ? null
          : ListenerRuleConditionHttpRequestMethod.fromMap(
              (map['httpRequestMethod'] as Map).cast<String, dynamic>()),
      pathPattern: map['pathPattern'] == null
          ? null
          : ListenerRuleConditionPathPattern.fromMap(
              (map['pathPattern'] as Map).cast<String, dynamic>()),
      queryStrings: map['queryStrings'] == null
          ? null
          : Input.decodeList<ListenerRuleConditionQueryString>(
              map['queryStrings'],
              (value) => ListenerRuleConditionQueryString.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceIp: map['sourceIp'] == null
          ? null
          : ListenerRuleConditionSourceIp.fromMap(
              (map['sourceIp'] as Map).cast<String, dynamic>()),
    );
  }
}

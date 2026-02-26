// ignore_for_file: unused_element, unnecessary_cast

import '../rule_group_rule_statement_rate_based_statement_custom_key_cookie/rule_group_rule_statement_rate_based_statement_custom_key_cookie.dart';
import '../rule_group_rule_statement_rate_based_statement_custom_key_header/rule_group_rule_statement_rate_based_statement_custom_key_header.dart';
import '../rule_group_rule_statement_rate_based_statement_custom_key_ja3_fingerprint/rule_group_rule_statement_rate_based_statement_custom_key_ja3_fingerprint.dart';
import '../rule_group_rule_statement_rate_based_statement_custom_key_ja4_fingerprint/rule_group_rule_statement_rate_based_statement_custom_key_ja4_fingerprint.dart';
import '../rule_group_rule_statement_rate_based_statement_custom_key_label_namespace/rule_group_rule_statement_rate_based_statement_custom_key_label_namespace.dart';
import '../rule_group_rule_statement_rate_based_statement_custom_key_query_argument/rule_group_rule_statement_rate_based_statement_custom_key_query_argument.dart';
import '../rule_group_rule_statement_rate_based_statement_custom_key_query_string/rule_group_rule_statement_rate_based_statement_custom_key_query_string.dart';
import '../rule_group_rule_statement_rate_based_statement_custom_key_uri_path/rule_group_rule_statement_rate_based_statement_custom_key_uri_path.dart';

class RuleGroupRuleStatementRateBasedStatementCustomKey {
  final Map<String, dynamic>? asn;

  /// (Optional) Use the value of a cookie in the request as an aggregate key. See RateLimit <span pulumi-lang-nodejs="`cookie`" pulumi-lang-dotnet="`Cookie`" pulumi-lang-go="`cookie`" pulumi-lang-python="`cookie`" pulumi-lang-yaml="`cookie`" pulumi-lang-java="`cookie`">`cookie`</span> below for details.
  final RuleGroupRuleStatementRateBasedStatementCustomKeyCookie? cookie;

  /// (Optional) Use the first IP address in an HTTP header as an aggregate key. See <span pulumi-lang-nodejs="`forwardedIp`" pulumi-lang-dotnet="`ForwardedIp`" pulumi-lang-go="`forwardedIp`" pulumi-lang-python="`forwarded_ip`" pulumi-lang-yaml="`forwardedIp`" pulumi-lang-java="`forwardedIp`">`forwarded_ip`</span> below for details.
  final Map<String, dynamic>? forwardedIp;

  /// (Optional) Use the value of a header in the request as an aggregate key. See RateLimit <span pulumi-lang-nodejs="`header`" pulumi-lang-dotnet="`Header`" pulumi-lang-go="`header`" pulumi-lang-python="`header`" pulumi-lang-yaml="`header`" pulumi-lang-java="`header`">`header`</span> below for details.
  final RuleGroupRuleStatementRateBasedStatementCustomKeyHeader? header;

  /// (Optional) Use the request's HTTP method as an aggregate key. See RateLimit <span pulumi-lang-nodejs="`httpMethod`" pulumi-lang-dotnet="`HttpMethod`" pulumi-lang-go="`httpMethod`" pulumi-lang-python="`http_method`" pulumi-lang-yaml="`httpMethod`" pulumi-lang-java="`httpMethod`">`http_method`</span> below for details.
  final Map<String, dynamic>? httpMethod;

  /// (Optional) Use the request's originating IP address as an aggregate key. See `RateLimit ip` below for details.
  final Map<String, dynamic>? ip;

  /// (Optional) Use the JA3 fingerprint in the request as an aggregate key. See `RateLimit ip` below for details.
  final RuleGroupRuleStatementRateBasedStatementCustomKeyJa3Fingerprint?
      ja3Fingerprint;

  /// (Optional) Use the JA3 fingerprint in the request as an aggregate key. See `RateLimit ip` below for details.
  final RuleGroupRuleStatementRateBasedStatementCustomKeyJa4Fingerprint?
      ja4Fingerprint;

  /// (Optional) Use the specified label namespace as an aggregate key. See RateLimit <span pulumi-lang-nodejs="`labelNamespace`" pulumi-lang-dotnet="`LabelNamespace`" pulumi-lang-go="`labelNamespace`" pulumi-lang-python="`label_namespace`" pulumi-lang-yaml="`labelNamespace`" pulumi-lang-java="`labelNamespace`">`label_namespace`</span> below for details.
  final RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace?
      labelNamespace;

  /// (Optional) Use the specified query argument as an aggregate key. See RateLimit <span pulumi-lang-nodejs="`queryArgument`" pulumi-lang-dotnet="`QueryArgument`" pulumi-lang-go="`queryArgument`" pulumi-lang-python="`query_argument`" pulumi-lang-yaml="`queryArgument`" pulumi-lang-java="`queryArgument`">`query_argument`</span> below for details.
  final RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgument?
      queryArgument;

  /// (Optional) Use the request's query string as an aggregate key. See RateLimit <span pulumi-lang-nodejs="`queryString`" pulumi-lang-dotnet="`QueryString`" pulumi-lang-go="`queryString`" pulumi-lang-python="`query_string`" pulumi-lang-yaml="`queryString`" pulumi-lang-java="`queryString`">`query_string`</span> below for details.
  final RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString?
      queryString;

  /// (Optional) Use the request's URI path as an aggregate key. See RateLimit <span pulumi-lang-nodejs="`uriPath`" pulumi-lang-dotnet="`UriPath`" pulumi-lang-go="`uriPath`" pulumi-lang-python="`uri_path`" pulumi-lang-yaml="`uriPath`" pulumi-lang-java="`uriPath`">`uri_path`</span> below for details.
  final RuleGroupRuleStatementRateBasedStatementCustomKeyUriPath? uriPath;

  RuleGroupRuleStatementRateBasedStatementCustomKey({
    this.asn,
    this.cookie,
    this.forwardedIp,
    this.header,
    this.httpMethod,
    this.ip,
    this.ja3Fingerprint,
    this.ja4Fingerprint,
    this.labelNamespace,
    this.queryArgument,
    this.queryString,
    this.uriPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final asnValue = asn;
    if (asnValue != null) {
      map['asn'] = asnValue;
    }
    final cookieValue = cookie;
    if (cookieValue != null) {
      map['cookie'] = cookieValue.toMap();
    }
    final forwardedIpValue = forwardedIp;
    if (forwardedIpValue != null) {
      map['forwardedIp'] = forwardedIpValue;
    }
    final headerValue = header;
    if (headerValue != null) {
      map['header'] = headerValue.toMap();
    }
    final httpMethodValue = httpMethod;
    if (httpMethodValue != null) {
      map['httpMethod'] = httpMethodValue;
    }
    final ipValue = ip;
    if (ipValue != null) {
      map['ip'] = ipValue;
    }
    final ja3FingerprintValue = ja3Fingerprint;
    if (ja3FingerprintValue != null) {
      map['ja3Fingerprint'] = ja3FingerprintValue.toMap();
    }
    final ja4FingerprintValue = ja4Fingerprint;
    if (ja4FingerprintValue != null) {
      map['ja4Fingerprint'] = ja4FingerprintValue.toMap();
    }
    final labelNamespaceValue = labelNamespace;
    if (labelNamespaceValue != null) {
      map['labelNamespace'] = labelNamespaceValue.toMap();
    }
    final queryArgumentValue = queryArgument;
    if (queryArgumentValue != null) {
      map['queryArgument'] = queryArgumentValue.toMap();
    }
    final queryStringValue = queryString;
    if (queryStringValue != null) {
      map['queryString'] = queryStringValue.toMap();
    }
    final uriPathValue = uriPath;
    if (uriPathValue != null) {
      map['uriPath'] = uriPathValue.toMap();
    }
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatementCustomKey.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementCustomKey(
      asn: map['asn'] == null
          ? null
          : (map['asn'] as Map).cast<String, dynamic>(),
      cookie: map['cookie'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementCustomKeyCookie.fromMap(
              (map['cookie'] as Map).cast<String, dynamic>()),
      forwardedIp: map['forwardedIp'] == null
          ? null
          : (map['forwardedIp'] as Map).cast<String, dynamic>(),
      header: map['header'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementCustomKeyHeader.fromMap(
              (map['header'] as Map).cast<String, dynamic>()),
      httpMethod: map['httpMethod'] == null
          ? null
          : (map['httpMethod'] as Map).cast<String, dynamic>(),
      ip: map['ip'] == null ? null : (map['ip'] as Map).cast<String, dynamic>(),
      ja3Fingerprint: map['ja3Fingerprint'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementCustomKeyJa3Fingerprint
              .fromMap((map['ja3Fingerprint'] as Map).cast<String, dynamic>()),
      ja4Fingerprint: map['ja4Fingerprint'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementCustomKeyJa4Fingerprint
              .fromMap((map['ja4Fingerprint'] as Map).cast<String, dynamic>()),
      labelNamespace: map['labelNamespace'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace
              .fromMap((map['labelNamespace'] as Map).cast<String, dynamic>()),
      queryArgument: map['queryArgument'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgument
              .fromMap((map['queryArgument'] as Map).cast<String, dynamic>()),
      queryString: map['queryString'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString
              .fromMap((map['queryString'] as Map).cast<String, dynamic>()),
      uriPath: map['uriPath'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementCustomKeyUriPath.fromMap(
              (map['uriPath'] as Map).cast<String, dynamic>()),
    );
  }
}

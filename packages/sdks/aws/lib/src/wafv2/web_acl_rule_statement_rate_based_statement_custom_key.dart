// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_custom_key_cookie.dart';
import 'web_acl_rule_statement_rate_based_statement_custom_key_header.dart';
import 'web_acl_rule_statement_rate_based_statement_custom_key_ja3_fingerprint.dart';
import 'web_acl_rule_statement_rate_based_statement_custom_key_ja4_fingerprint.dart';
import 'web_acl_rule_statement_rate_based_statement_custom_key_label_namespace.dart';
import 'web_acl_rule_statement_rate_based_statement_custom_key_query_argument.dart';
import 'web_acl_rule_statement_rate_based_statement_custom_key_query_string.dart';
import 'web_acl_rule_statement_rate_based_statement_custom_key_uri_path.dart';

class WebAclRuleStatementRateBasedStatementCustomKey {
  /// Use an Autonomous System Number (ASN) derived from the request's originating or forwarded IP address as an aggregate key. See RateLimit `asn` below for details.
  final pulumi.Input<Map<String, dynamic>>? asn;
  /// Use the value of a cookie in the request as an aggregate key. See RateLimit `cookie` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementCustomKeyCookie>? cookie;
  /// Use the first IP address in an HTTP header as an aggregate key. See `forwarded_ip` below for details.
  final pulumi.Input<Map<String, dynamic>>? forwardedIp;
  /// Use the value of a header in the request as an aggregate key. See RateLimit `header` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementCustomKeyHeader>? header;
  /// Use the request's HTTP method as an aggregate key. See RateLimit `http_method` below for details.
  final pulumi.Input<Map<String, dynamic>>? httpMethod;
  /// Use the request's originating IP address as an aggregate key. See `RateLimit ip` below for details.
  final pulumi.Input<Map<String, dynamic>>? ip;
  /// Use the JA3 fingerprint in the request as an aggregate key. See `RateLimit ip` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementCustomKeyJa3Fingerprint>? ja3Fingerprint;
  /// Use the JA3 fingerprint in the request as an aggregate key. See `RateLimit ip` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementCustomKeyJa4Fingerprint>? ja4Fingerprint;
  /// Use the specified label namespace as an aggregate key. See RateLimit `label_namespace` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace>? labelNamespace;
  /// Use the specified query argument as an aggregate key. See RateLimit `query_argument` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementCustomKeyQueryArgument>? queryArgument;
  /// Use the request's query string as an aggregate key. See RateLimit `query_string` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementCustomKeyQueryString>? queryString;
  /// Use the request's URI path as an aggregate key. See RateLimit `uri_path` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementCustomKeyUriPath>? uriPath;

  /// Creates a new [WebAclRuleStatementRateBasedStatementCustomKey].
  /// [asn] Use an Autonomous System Number (ASN) derived from the request's originating or forwarded IP address as an aggregate key. See RateLimit `asn` below for details.
  /// [cookie] Use the value of a cookie in the request as an aggregate key. See RateLimit `cookie` below for details.
  /// [forwardedIp] Use the first IP address in an HTTP header as an aggregate key. See `forwarded_ip` below for details.
  /// [header] Use the value of a header in the request as an aggregate key. See RateLimit `header` below for details.
  /// [httpMethod] Use the request's HTTP method as an aggregate key. See RateLimit `http_method` below for details.
  /// [ip] Use the request's originating IP address as an aggregate key. See `RateLimit ip` below for details.
  /// [ja3Fingerprint] Use the JA3 fingerprint in the request as an aggregate key. See `RateLimit ip` below for details.
  /// [ja4Fingerprint] Use the JA3 fingerprint in the request as an aggregate key. See `RateLimit ip` below for details.
  /// [labelNamespace] Use the specified label namespace as an aggregate key. See RateLimit `label_namespace` below for details.
  /// [queryArgument] Use the specified query argument as an aggregate key. See RateLimit `query_argument` below for details.
  /// [queryString] Use the request's query string as an aggregate key. See RateLimit `query_string` below for details.
  /// [uriPath] Use the request's URI path as an aggregate key. See RateLimit `uri_path` below for details.
  WebAclRuleStatementRateBasedStatementCustomKey({
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
    return <String, dynamic>{
      'asn': ?asn,
      'cookie': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementCustomKeyCookie, Map<String, dynamic>>(cookie, (value) => value.toMap()),
      'forwardedIp': ?forwardedIp,
      'header': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementCustomKeyHeader, Map<String, dynamic>>(header, (value) => value.toMap()),
      'httpMethod': ?httpMethod,
      'ip': ?ip,
      'ja3Fingerprint': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementCustomKeyJa3Fingerprint, Map<String, dynamic>>(ja3Fingerprint, (value) => value.toMap()),
      'ja4Fingerprint': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementCustomKeyJa4Fingerprint, Map<String, dynamic>>(ja4Fingerprint, (value) => value.toMap()),
      'labelNamespace': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace, Map<String, dynamic>>(labelNamespace, (value) => value.toMap()),
      'queryArgument': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementCustomKeyQueryArgument, Map<String, dynamic>>(queryArgument, (value) => value.toMap()),
      'queryString': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementCustomKeyQueryString, Map<String, dynamic>>(queryString, (value) => value.toMap()),
      'uriPath': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementCustomKeyUriPath, Map<String, dynamic>>(uriPath, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementRateBasedStatementCustomKey.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementCustomKey(
      asn: map['asn'] == null ? null : ((map['asn'] as Map).cast<String, dynamic>()).input(),
      cookie: map['cookie'] == null ? null : (WebAclRuleStatementRateBasedStatementCustomKeyCookie.fromMap((map['cookie'] as Map).cast<String, dynamic>())).input(),
      forwardedIp: map['forwardedIp'] == null ? null : ((map['forwardedIp'] as Map).cast<String, dynamic>()).input(),
      header: map['header'] == null ? null : (WebAclRuleStatementRateBasedStatementCustomKeyHeader.fromMap((map['header'] as Map).cast<String, dynamic>())).input(),
      httpMethod: map['httpMethod'] == null ? null : ((map['httpMethod'] as Map).cast<String, dynamic>()).input(),
      ip: map['ip'] == null ? null : ((map['ip'] as Map).cast<String, dynamic>()).input(),
      ja3Fingerprint: map['ja3Fingerprint'] == null ? null : (WebAclRuleStatementRateBasedStatementCustomKeyJa3Fingerprint.fromMap((map['ja3Fingerprint'] as Map).cast<String, dynamic>())).input(),
      ja4Fingerprint: map['ja4Fingerprint'] == null ? null : (WebAclRuleStatementRateBasedStatementCustomKeyJa4Fingerprint.fromMap((map['ja4Fingerprint'] as Map).cast<String, dynamic>())).input(),
      labelNamespace: map['labelNamespace'] == null ? null : (WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace.fromMap((map['labelNamespace'] as Map).cast<String, dynamic>())).input(),
      queryArgument: map['queryArgument'] == null ? null : (WebAclRuleStatementRateBasedStatementCustomKeyQueryArgument.fromMap((map['queryArgument'] as Map).cast<String, dynamic>())).input(),
      queryString: map['queryString'] == null ? null : (WebAclRuleStatementRateBasedStatementCustomKeyQueryString.fromMap((map['queryString'] as Map).cast<String, dynamic>())).input(),
      uriPath: map['uriPath'] == null ? null : (WebAclRuleStatementRateBasedStatementCustomKeyUriPath.fromMap((map['uriPath'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


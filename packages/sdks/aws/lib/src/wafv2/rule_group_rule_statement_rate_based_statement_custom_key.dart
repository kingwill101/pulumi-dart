// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_rate_based_statement_custom_key_cookie.dart';
import 'rule_group_rule_statement_rate_based_statement_custom_key_header.dart';
import 'rule_group_rule_statement_rate_based_statement_custom_key_ja3_fingerprint.dart';
import 'rule_group_rule_statement_rate_based_statement_custom_key_ja4_fingerprint.dart';
import 'rule_group_rule_statement_rate_based_statement_custom_key_label_namespace.dart';
import 'rule_group_rule_statement_rate_based_statement_custom_key_query_argument.dart';
import 'rule_group_rule_statement_rate_based_statement_custom_key_query_string.dart';
import 'rule_group_rule_statement_rate_based_statement_custom_key_uri_path.dart';

class RuleGroupRuleStatementRateBasedStatementCustomKey {
  final pulumi.Input<Map<String, dynamic>>? asn;
  /// (Optional) Use the value of a cookie in the request as an aggregate key. See RateLimit `cookie` below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementCustomKeyCookie>? cookie;
  /// (Optional) Use the first IP address in an HTTP header as an aggregate key. See `forwarded_ip` below for details.
  final pulumi.Input<Map<String, dynamic>>? forwardedIp;
  /// (Optional) Use the value of a header in the request as an aggregate key. See RateLimit `header` below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementCustomKeyHeader>? header;
  /// (Optional) Use the request's HTTP method as an aggregate key. See RateLimit `http_method` below for details.
  final pulumi.Input<Map<String, dynamic>>? httpMethod;
  /// (Optional) Use the request's originating IP address as an aggregate key. See `RateLimit ip` below for details.
  final pulumi.Input<Map<String, dynamic>>? ip;
  /// (Optional) Use the JA3 fingerprint in the request as an aggregate key. See `RateLimit ip` below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementCustomKeyJa3Fingerprint>? ja3Fingerprint;
  /// (Optional) Use the JA3 fingerprint in the request as an aggregate key. See `RateLimit ip` below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementCustomKeyJa4Fingerprint>? ja4Fingerprint;
  /// (Optional) Use the specified label namespace as an aggregate key. See RateLimit `label_namespace` below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace>? labelNamespace;
  /// (Optional) Use the specified query argument as an aggregate key. See RateLimit `query_argument` below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgument>? queryArgument;
  /// (Optional) Use the request's query string as an aggregate key. See RateLimit `query_string` below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString>? queryString;
  /// (Optional) Use the request's URI path as an aggregate key. See RateLimit `uri_path` below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementCustomKeyUriPath>? uriPath;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementCustomKey].
  /// [asn] Optional.
  /// [cookie] (Optional) Use the value of a cookie in the request as an aggregate key. See RateLimit `cookie` below for details.
  /// [forwardedIp] (Optional) Use the first IP address in an HTTP header as an aggregate key. See `forwarded_ip` below for details.
  /// [header] (Optional) Use the value of a header in the request as an aggregate key. See RateLimit `header` below for details.
  /// [httpMethod] (Optional) Use the request's HTTP method as an aggregate key. See RateLimit `http_method` below for details.
  /// [ip] (Optional) Use the request's originating IP address as an aggregate key. See `RateLimit ip` below for details.
  /// [ja3Fingerprint] (Optional) Use the JA3 fingerprint in the request as an aggregate key. See `RateLimit ip` below for details.
  /// [ja4Fingerprint] (Optional) Use the JA3 fingerprint in the request as an aggregate key. See `RateLimit ip` below for details.
  /// [labelNamespace] (Optional) Use the specified label namespace as an aggregate key. See RateLimit `label_namespace` below for details.
  /// [queryArgument] (Optional) Use the specified query argument as an aggregate key. See RateLimit `query_argument` below for details.
  /// [queryString] (Optional) Use the request's query string as an aggregate key. See RateLimit `query_string` below for details.
  /// [uriPath] (Optional) Use the request's URI path as an aggregate key. See RateLimit `uri_path` below for details.
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
    return <String, dynamic>{
      'asn': ?asn,
      'cookie': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementCustomKeyCookie, Map<String, dynamic>>(cookie, (value) => value.toMap()),
      'forwardedIp': ?forwardedIp,
      'header': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementCustomKeyHeader, Map<String, dynamic>>(header, (value) => value.toMap()),
      'httpMethod': ?httpMethod,
      'ip': ?ip,
      'ja3Fingerprint': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementCustomKeyJa3Fingerprint, Map<String, dynamic>>(ja3Fingerprint, (value) => value.toMap()),
      'ja4Fingerprint': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementCustomKeyJa4Fingerprint, Map<String, dynamic>>(ja4Fingerprint, (value) => value.toMap()),
      'labelNamespace': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace, Map<String, dynamic>>(labelNamespace, (value) => value.toMap()),
      'queryArgument': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgument, Map<String, dynamic>>(queryArgument, (value) => value.toMap()),
      'queryString': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString, Map<String, dynamic>>(queryString, (value) => value.toMap()),
      'uriPath': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementCustomKeyUriPath, Map<String, dynamic>>(uriPath, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementCustomKey.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementCustomKey(
      asn: map['asn'] == null ? null : (((map['asn'] as Map).cast<String, dynamic>()).input()).input(),
      cookie: map['cookie'] == null ? null : ((RuleGroupRuleStatementRateBasedStatementCustomKeyCookie.fromMap((map['cookie']! as Map).cast<String, dynamic>())).input()).input(),
      forwardedIp: map['forwardedIp'] == null ? null : (((map['forwardedIp'] as Map).cast<String, dynamic>()).input()).input(),
      header: map['header'] == null ? null : ((RuleGroupRuleStatementRateBasedStatementCustomKeyHeader.fromMap((map['header']! as Map).cast<String, dynamic>())).input()).input(),
      httpMethod: map['httpMethod'] == null ? null : (((map['httpMethod'] as Map).cast<String, dynamic>()).input()).input(),
      ip: map['ip'] == null ? null : (((map['ip'] as Map).cast<String, dynamic>()).input()).input(),
      ja3Fingerprint: map['ja3Fingerprint'] == null ? null : ((RuleGroupRuleStatementRateBasedStatementCustomKeyJa3Fingerprint.fromMap((map['ja3Fingerprint']! as Map).cast<String, dynamic>())).input()).input(),
      ja4Fingerprint: map['ja4Fingerprint'] == null ? null : ((RuleGroupRuleStatementRateBasedStatementCustomKeyJa4Fingerprint.fromMap((map['ja4Fingerprint']! as Map).cast<String, dynamic>())).input()).input(),
      labelNamespace: map['labelNamespace'] == null ? null : ((RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace.fromMap((map['labelNamespace']! as Map).cast<String, dynamic>())).input()).input(),
      queryArgument: map['queryArgument'] == null ? null : ((RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgument.fromMap((map['queryArgument']! as Map).cast<String, dynamic>())).input()).input(),
      queryString: map['queryString'] == null ? null : ((RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString.fromMap((map['queryString']! as Map).cast<String, dynamic>())).input()).input(),
      uriPath: map['uriPath'] == null ? null : ((RuleGroupRuleStatementRateBasedStatementCustomKeyUriPath.fromMap((map['uriPath']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


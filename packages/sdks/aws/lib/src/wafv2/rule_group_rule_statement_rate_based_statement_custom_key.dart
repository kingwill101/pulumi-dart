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
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementCustomKeyCookie>?
  cookie;

  /// (Optional) Use the first IP address in an HTTP header as an aggregate key. See `forwarded_ip` below for details.
  final pulumi.Input<Map<String, dynamic>>? forwardedIp;

  /// (Optional) Use the value of a header in the request as an aggregate key. See RateLimit `header` below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementCustomKeyHeader>?
  header;

  /// (Optional) Use the request's HTTP method as an aggregate key. See RateLimit `http_method` below for details.
  final pulumi.Input<Map<String, dynamic>>? httpMethod;

  /// (Optional) Use the request's originating IP address as an aggregate key. See `RateLimit ip` below for details.
  final pulumi.Input<Map<String, dynamic>>? ip;

  /// (Optional) Use the JA3 fingerprint in the request as an aggregate key. See `RateLimit ip` below for details.
  final pulumi.Input<
    RuleGroupRuleStatementRateBasedStatementCustomKeyJa3Fingerprint
  >?
  ja3Fingerprint;

  /// (Optional) Use the JA3 fingerprint in the request as an aggregate key. See `RateLimit ip` below for details.
  final pulumi.Input<
    RuleGroupRuleStatementRateBasedStatementCustomKeyJa4Fingerprint
  >?
  ja4Fingerprint;

  /// (Optional) Use the specified label namespace as an aggregate key. See RateLimit `label_namespace` below for details.
  final pulumi.Input<
    RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace
  >?
  labelNamespace;

  /// (Optional) Use the specified query argument as an aggregate key. See RateLimit `query_argument` below for details.
  final pulumi.Input<
    RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgument
  >?
  queryArgument;

  /// (Optional) Use the request's query string as an aggregate key. See RateLimit `query_string` below for details.
  final pulumi.Input<
    RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString
  >?
  queryString;

  /// (Optional) Use the request's URI path as an aggregate key. See RateLimit `uri_path` below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementCustomKeyUriPath>?
  uriPath;

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
      'cookie':
          ?pulumi.Input.mapOptionalInputValue<
            RuleGroupRuleStatementRateBasedStatementCustomKeyCookie,
            Map<String, dynamic>
          >(cookie, (value) => value.toMap()),
      'forwardedIp': ?forwardedIp,
      'header':
          ?pulumi.Input.mapOptionalInputValue<
            RuleGroupRuleStatementRateBasedStatementCustomKeyHeader,
            Map<String, dynamic>
          >(header, (value) => value.toMap()),
      'httpMethod': ?httpMethod,
      'ip': ?ip,
      'ja3Fingerprint':
          ?pulumi.Input.mapOptionalInputValue<
            RuleGroupRuleStatementRateBasedStatementCustomKeyJa3Fingerprint,
            Map<String, dynamic>
          >(ja3Fingerprint, (value) => value.toMap()),
      'ja4Fingerprint':
          ?pulumi.Input.mapOptionalInputValue<
            RuleGroupRuleStatementRateBasedStatementCustomKeyJa4Fingerprint,
            Map<String, dynamic>
          >(ja4Fingerprint, (value) => value.toMap()),
      'labelNamespace':
          ?pulumi.Input.mapOptionalInputValue<
            RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace,
            Map<String, dynamic>
          >(labelNamespace, (value) => value.toMap()),
      'queryArgument':
          ?pulumi.Input.mapOptionalInputValue<
            RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgument,
            Map<String, dynamic>
          >(queryArgument, (value) => value.toMap()),
      'queryString':
          ?pulumi.Input.mapOptionalInputValue<
            RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString,
            Map<String, dynamic>
          >(queryString, (value) => value.toMap()),
      'uriPath':
          ?pulumi.Input.mapOptionalInputValue<
            RuleGroupRuleStatementRateBasedStatementCustomKeyUriPath,
            Map<String, dynamic>
          >(uriPath, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementCustomKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleStatementRateBasedStatementCustomKey(
      asn: (() {
        final guardedValue = map['asn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      cookie: (() {
        final guardedValue = map['cookie'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleGroupRuleStatementRateBasedStatementCustomKeyCookie.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      forwardedIp: (() {
        final guardedValue = map['forwardedIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      header: (() {
        final guardedValue = map['header'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleGroupRuleStatementRateBasedStatementCustomKeyHeader.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      httpMethod: (() {
        final guardedValue = map['httpMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      ip: (() {
        final guardedValue = map['ip'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      ja3Fingerprint: (() {
        final guardedValue = map['ja3Fingerprint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleGroupRuleStatementRateBasedStatementCustomKeyJa3Fingerprint.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      ja4Fingerprint: (() {
        final guardedValue = map['ja4Fingerprint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleGroupRuleStatementRateBasedStatementCustomKeyJa4Fingerprint.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      labelNamespace: (() {
        final guardedValue = map['labelNamespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      queryArgument: (() {
        final guardedValue = map['queryArgument'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleGroupRuleStatementRateBasedStatementCustomKeyQueryArgument.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      queryString: (() {
        final guardedValue = map['queryString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleGroupRuleStatementRateBasedStatementCustomKeyQueryString.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      uriPath: (() {
        final guardedValue = map['uriPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleGroupRuleStatementRateBasedStatementCustomKeyUriPath.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

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
  final pulumi.Input<Map<String, dynamic>?>? asn;
  /// Use a cookie as an aggregate key. See Custom Key Cookie below.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementCustomKeyCookie?>? cookie;
  /// Use the forwarded IP address as an aggregate key.
  final pulumi.Input<Map<String, dynamic>?>? forwardedIp;
  /// Use a header as an aggregate key. See Custom Key Header below.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementCustomKeyHeader?>? header;
  /// Use the HTTP method as an aggregate key.
  final pulumi.Input<Map<String, dynamic>?>? httpMethod;
  /// Use the IP address as an aggregate key.
  final pulumi.Input<Map<String, dynamic>?>? ip;
  /// Match against the request's JA3 fingerprint (CloudFront and ALB only). See JA3 Fingerprint below.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementCustomKeyJa3Fingerprint?>? ja3Fingerprint;
  /// Match against the request's JA4 fingerprint (CloudFront and ALB only). See JA4 Fingerprint below.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementCustomKeyJa4Fingerprint?>? ja4Fingerprint;
  /// Use a label namespace as an aggregate key. See Custom Key Label Namespace below.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace?>? labelNamespace;
  /// Use a query argument as an aggregate key. See Custom Key Query Argument below.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementCustomKeyQueryArgument?>? queryArgument;
  /// Use the query string as an aggregate key.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementCustomKeyQueryString?>? queryString;
  /// Use the URI path as an aggregate key.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementCustomKeyUriPath?>? uriPath;

  /// Creates a new [WebAclRuleStatementRateBasedStatementCustomKey].
  /// [asn] Optional.
  /// [cookie] Use a cookie as an aggregate key. See Custom Key Cookie below.
  /// [forwardedIp] Use the forwarded IP address as an aggregate key.
  /// [header] Use a header as an aggregate key. See Custom Key Header below.
  /// [httpMethod] Use the HTTP method as an aggregate key.
  /// [ip] Use the IP address as an aggregate key.
  /// [ja3Fingerprint] Match against the request's JA3 fingerprint (CloudFront and ALB only). See JA3 Fingerprint below.
  /// [ja4Fingerprint] Match against the request's JA4 fingerprint (CloudFront and ALB only). See JA4 Fingerprint below.
  /// [labelNamespace] Use a label namespace as an aggregate key. See Custom Key Label Namespace below.
  /// [queryArgument] Use a query argument as an aggregate key. See Custom Key Query Argument below.
  /// [queryString] Use the query string as an aggregate key.
  /// [uriPath] Use the URI path as an aggregate key.
  const WebAclRuleStatementRateBasedStatementCustomKey({
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
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      cookie: (() { final guardedValue = map['cookie']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementCustomKeyCookie.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forwardedIp: (() { final guardedValue = map['forwardedIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementCustomKeyHeader.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpMethod: (() { final guardedValue = map['httpMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      ja3Fingerprint: (() { final guardedValue = map['ja3Fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementCustomKeyJa3Fingerprint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ja4Fingerprint: (() { final guardedValue = map['ja4Fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementCustomKeyJa4Fingerprint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labelNamespace: (() { final guardedValue = map['labelNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementCustomKeyLabelNamespace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queryArgument: (() { final guardedValue = map['queryArgument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementCustomKeyQueryArgument.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queryString: (() { final guardedValue = map['queryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementCustomKeyQueryString.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uriPath: (() { final guardedValue = map['uriPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementCustomKeyUriPath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

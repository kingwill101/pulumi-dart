// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_sqli_match_statement_field_to_match_body.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_sqli_match_statement_field_to_match_cookies.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_sqli_match_statement_field_to_match_header.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_sqli_match_statement_field_to_match_header_order.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_sqli_match_statement_field_to_match_ja3_fingerprint.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_sqli_match_statement_field_to_match_ja4_fingerprint.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_sqli_match_statement_field_to_match_json_body.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_sqli_match_statement_field_to_match_single_header.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_sqli_match_statement_field_to_match_single_query_argument.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_sqli_match_statement_field_to_match_uri_fragment.dart';

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatch {
  /// Inspect all query arguments.
  final pulumi.Input<Map<String, dynamic>>? allQueryArguments;
  /// Inspect the request body as plain text. See Body below.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchBody>? body;
  /// Inspect the request cookies. See Cookies below.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchCookies>? cookies;
  /// Inspect a string containing the list of the request's header names, ordered as they appear in the web request. See Header Order below.
  final pulumi.Input<List<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchHeaderOrder>>? headerOrders;
  /// Inspect the request headers. See Headers below.
  final pulumi.Input<List<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchHeader>>? headers;
  /// Match against the request's JA3 fingerprint (CloudFront and ALB only). See JA3 Fingerprint below.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchJa3Fingerprint>? ja3Fingerprint;
  /// Match against the request's JA4 fingerprint (CloudFront and ALB only). See JA4 Fingerprint below.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchJa4Fingerprint>? ja4Fingerprint;
  /// Inspect the request body as JSON. See JSON Body below.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchJsonBody>? jsonBody;
  /// Inspect the HTTP method.
  final pulumi.Input<Map<String, dynamic>>? method;
  /// Inspect the query string.
  final pulumi.Input<Map<String, dynamic>>? queryString;
  /// Inspect a single header. See Single Header below.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchSingleHeader>? singleHeader;
  /// Inspect a single query argument. See Single Query Argument below.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchSingleQueryArgument>? singleQueryArgument;
  /// Inspect fragments of the request URI. See URI Fragment below.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchUriFragment>? uriFragment;
  /// Inspect the request URI path.
  final pulumi.Input<Map<String, dynamic>>? uriPath;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatch].
  /// [allQueryArguments] Inspect all query arguments.
  /// [body] Inspect the request body as plain text. See Body below.
  /// [cookies] Inspect the request cookies. See Cookies below.
  /// [headerOrders] Inspect a string containing the list of the request's header names, ordered as they appear in the web request. See Header Order below.
  /// [headers] Inspect the request headers. See Headers below.
  /// [ja3Fingerprint] Match against the request's JA3 fingerprint (CloudFront and ALB only). See JA3 Fingerprint below.
  /// [ja4Fingerprint] Match against the request's JA4 fingerprint (CloudFront and ALB only). See JA4 Fingerprint below.
  /// [jsonBody] Inspect the request body as JSON. See JSON Body below.
  /// [method] Inspect the HTTP method.
  /// [queryString] Inspect the query string.
  /// [singleHeader] Inspect a single header. See Single Header below.
  /// [singleQueryArgument] Inspect a single query argument. See Single Query Argument below.
  /// [uriFragment] Inspect fragments of the request URI. See URI Fragment below.
  /// [uriPath] Inspect the request URI path.
  const WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatch({
    this.allQueryArguments,
    this.body,
    this.cookies,
    this.headerOrders,
    this.headers,
    this.ja3Fingerprint,
    this.ja4Fingerprint,
    this.jsonBody,
    this.method,
    this.queryString,
    this.singleHeader,
    this.singleQueryArgument,
    this.uriFragment,
    this.uriPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allQueryArguments': ?allQueryArguments,
      'body': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchBody, Map<String, dynamic>>(body, (value) => value.toMap()),
      'cookies': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchCookies, Map<String, dynamic>>(cookies, (value) => value.toMap()),
      'headerOrders': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchHeaderOrder>, List<Map<String, dynamic>>>(headerOrders, (value) => pulumi.Input.encodeList<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchHeaderOrder, Map<String, dynamic>>(value, (value) => value.toMap())),
      'headers': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ja3Fingerprint': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchJa3Fingerprint, Map<String, dynamic>>(ja3Fingerprint, (value) => value.toMap()),
      'ja4Fingerprint': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchJa4Fingerprint, Map<String, dynamic>>(ja4Fingerprint, (value) => value.toMap()),
      'jsonBody': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchJsonBody, Map<String, dynamic>>(jsonBody, (value) => value.toMap()),
      'method': ?method,
      'queryString': ?queryString,
      'singleHeader': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchSingleHeader, Map<String, dynamic>>(singleHeader, (value) => value.toMap()),
      'singleQueryArgument': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchSingleQueryArgument, Map<String, dynamic>>(singleQueryArgument, (value) => value.toMap()),
      'uriFragment': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchUriFragment, Map<String, dynamic>>(uriFragment, (value) => value.toMap()),
      'uriPath': ?uriPath,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatch.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatch(
      allQueryArguments: (() { final guardedValue = map['allQueryArguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchBody.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cookies: (() { final guardedValue = map['cookies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchCookies.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      headerOrders: (() { final guardedValue = map['headerOrders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchHeaderOrder>(guardedValue, (value) => WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchHeaderOrder.fromMap((value as Map).cast<String, dynamic>()))); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchHeader>(guardedValue, (value) => WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ja3Fingerprint: (() { final guardedValue = map['ja3Fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchJa3Fingerprint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ja4Fingerprint: (() { final guardedValue = map['ja4Fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchJa4Fingerprint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jsonBody: (() { final guardedValue = map['jsonBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchJsonBody.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      queryString: (() { final guardedValue = map['queryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      singleHeader: (() { final guardedValue = map['singleHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchSingleHeader.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      singleQueryArgument: (() { final guardedValue = map['singleQueryArgument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchSingleQueryArgument.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uriFragment: (() { final guardedValue = map['uriFragment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchUriFragment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uriPath: (() { final guardedValue = map['uriPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

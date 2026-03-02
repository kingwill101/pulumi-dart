// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_field_to_match_body.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_field_to_match_cookies.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_field_to_match_header.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_field_to_match_header_order.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_field_to_match_ja3_fingerprint.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_field_to_match_ja4_fingerprint.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_field_to_match_json_body.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_field_to_match_single_header.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_field_to_match_single_query_argument.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement_field_to_match_uri_fragment.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatch {
  /// Inspect all query arguments.
  final pulumi.Input<Map<String, dynamic>>? allQueryArguments;
  /// Inspect the request body, which immediately follows the request headers.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchBody>? body;
  /// Inspect the cookies in the web request. See Cookies below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchCookies>? cookies;
  /// Inspect the request headers. See Header Order below for details.
  final pulumi.Input<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchHeaderOrder>>? headerOrders;
  /// Inspect the request headers. See Headers below for details.
  final pulumi.Input<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchHeader>>? headers;
  /// Inspect the JA3 fingerprint. See `ja3_fingerprint` below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchJa3Fingerprint>? ja3Fingerprint;
  /// Inspect the JA4 fingerprint. See `ja4_fingerprint` below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchJa4Fingerprint>? ja4Fingerprint;
  /// Inspect the request body as JSON. See JSON Body for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchJsonBody>? jsonBody;
  /// Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform.
  final pulumi.Input<Map<String, dynamic>>? method;
  /// Inspect the query string. This is the part of a URL that appears after a `?` character, if any.
  final pulumi.Input<Map<String, dynamic>>? queryString;
  /// Inspect a single header. See Single Header below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchSingleHeader>? singleHeader;
  /// Inspect a single query argument. See Single Query Argument below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchSingleQueryArgument>? singleQueryArgument;
  /// Inspect the part of a URL that follows the "#" symbol, providing additional information about the resource. See URI Fragment below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchUriFragment>? uriFragment;
  /// Inspect the request URI path. This is the part of a web request that identifies a resource, for example, `/images/daily-ad.jpg`.
  final pulumi.Input<Map<String, dynamic>>? uriPath;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatch].
  /// [allQueryArguments] Inspect all query arguments.
  /// [body] Inspect the request body, which immediately follows the request headers.
  /// [cookies] Inspect the cookies in the web request. See Cookies below for details.
  /// [headerOrders] Inspect the request headers. See Header Order below for details.
  /// [headers] Inspect the request headers. See Headers below for details.
  /// [ja3Fingerprint] Inspect the JA3 fingerprint. See `ja3_fingerprint` below for details.
  /// [ja4Fingerprint] Inspect the JA4 fingerprint. See `ja4_fingerprint` below for details.
  /// [jsonBody] Inspect the request body as JSON. See JSON Body for details.
  /// [method] Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform.
  /// [queryString] Inspect the query string. This is the part of a URL that appears after a `?` character, if any.
  /// [singleHeader] Inspect a single header. See Single Header below for details.
  /// [singleQueryArgument] Inspect a single query argument. See Single Query Argument below for details.
  /// [uriFragment] Inspect the part of a URL that follows the "#" symbol, providing additional information about the resource. See URI Fragment below for details.
  /// [uriPath] Inspect the request URI path. This is the part of a web request that identifies a resource, for example, `/images/daily-ad.jpg`.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatch({
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
      'body': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchBody, Map<String, dynamic>>(body, (value) => value.toMap()),
      'cookies': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchCookies, Map<String, dynamic>>(cookies, (value) => value.toMap()),
      'headerOrders': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchHeaderOrder>, List<Map<String, dynamic>>>(headerOrders, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchHeaderOrder, Map<String, dynamic>>(value, (value) => value.toMap())),
      'headers': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ja3Fingerprint': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchJa3Fingerprint, Map<String, dynamic>>(ja3Fingerprint, (value) => value.toMap()),
      'ja4Fingerprint': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchJa4Fingerprint, Map<String, dynamic>>(ja4Fingerprint, (value) => value.toMap()),
      'jsonBody': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchJsonBody, Map<String, dynamic>>(jsonBody, (value) => value.toMap()),
      'method': ?method,
      'queryString': ?queryString,
      'singleHeader': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchSingleHeader, Map<String, dynamic>>(singleHeader, (value) => value.toMap()),
      'singleQueryArgument': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchSingleQueryArgument, Map<String, dynamic>>(singleQueryArgument, (value) => value.toMap()),
      'uriFragment': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchUriFragment, Map<String, dynamic>>(uriFragment, (value) => value.toMap()),
      'uriPath': ?uriPath,
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatch.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatch(
      allQueryArguments: map['allQueryArguments'] == null ? null : (((map['allQueryArguments'] as Map).cast<String, dynamic>()).input()).input(),
      body: map['body'] == null ? null : ((RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchBody.fromMap((map['body']! as Map).cast<String, dynamic>())).input()).input(),
      cookies: map['cookies'] == null ? null : ((RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchCookies.fromMap((map['cookies']! as Map).cast<String, dynamic>())).input()).input(),
      headerOrders: map['headerOrders'] == null ? null : ((pulumi.Input.decodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchHeaderOrder>(map['headerOrders']!, (value) => RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchHeaderOrder.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      headers: map['headers'] == null ? null : ((pulumi.Input.decodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchHeader>(map['headers']!, (value) => RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchHeader.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      ja3Fingerprint: map['ja3Fingerprint'] == null ? null : ((RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchJa3Fingerprint.fromMap((map['ja3Fingerprint']! as Map).cast<String, dynamic>())).input()).input(),
      ja4Fingerprint: map['ja4Fingerprint'] == null ? null : ((RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchJa4Fingerprint.fromMap((map['ja4Fingerprint']! as Map).cast<String, dynamic>())).input()).input(),
      jsonBody: map['jsonBody'] == null ? null : ((RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchJsonBody.fromMap((map['jsonBody']! as Map).cast<String, dynamic>())).input()).input(),
      method: map['method'] == null ? null : (((map['method'] as Map).cast<String, dynamic>()).input()).input(),
      queryString: map['queryString'] == null ? null : (((map['queryString'] as Map).cast<String, dynamic>()).input()).input(),
      singleHeader: map['singleHeader'] == null ? null : ((RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchSingleHeader.fromMap((map['singleHeader']! as Map).cast<String, dynamic>())).input()).input(),
      singleQueryArgument: map['singleQueryArgument'] == null ? null : ((RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchSingleQueryArgument.fromMap((map['singleQueryArgument']! as Map).cast<String, dynamic>())).input()).input(),
      uriFragment: map['uriFragment'] == null ? null : ((RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchUriFragment.fromMap((map['uriFragment']! as Map).cast<String, dynamic>())).input()).input(),
      uriPath: map['uriPath'] == null ? null : (((map['uriPath'] as Map).cast<String, dynamic>()).input()).input(),
    );
  }
}


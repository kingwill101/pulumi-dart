// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_sqli_match_statement_field_to_match_body.dart';
import 'rule_group_rule_statement_sqli_match_statement_field_to_match_cookies.dart';
import 'rule_group_rule_statement_sqli_match_statement_field_to_match_header.dart';
import 'rule_group_rule_statement_sqli_match_statement_field_to_match_header_order.dart';
import 'rule_group_rule_statement_sqli_match_statement_field_to_match_ja3_fingerprint.dart';
import 'rule_group_rule_statement_sqli_match_statement_field_to_match_ja4_fingerprint.dart';
import 'rule_group_rule_statement_sqli_match_statement_field_to_match_json_body.dart';
import 'rule_group_rule_statement_sqli_match_statement_field_to_match_single_header.dart';
import 'rule_group_rule_statement_sqli_match_statement_field_to_match_single_query_argument.dart';
import 'rule_group_rule_statement_sqli_match_statement_field_to_match_uri_fragment.dart';

class RuleGroupRuleStatementSqliMatchStatementFieldToMatch {
  /// Inspect all query arguments.
  final pulumi.Input<Map<String, dynamic>>? allQueryArguments;
  /// Inspect the request body, which immediately follows the request headers.
  final pulumi.Input<RuleGroupRuleStatementSqliMatchStatementFieldToMatchBody>? body;
  /// Inspect the cookies in the web request. See Cookies below for details.
  final pulumi.Input<RuleGroupRuleStatementSqliMatchStatementFieldToMatchCookies>? cookies;
  /// Inspect the request headers. See Header Order below for details.
  final pulumi.Input<List<RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeaderOrder>>? headerOrders;
  /// Inspect the request headers. See Headers below for details.
  final pulumi.Input<List<RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeader>>? headers;
  /// Inspect the JA3 fingerprint. See `ja3_fingerprint` below for details.
  final pulumi.Input<RuleGroupRuleStatementSqliMatchStatementFieldToMatchJa3Fingerprint>? ja3Fingerprint;
  /// Inspect the JA4 fingerprint. See `ja4_fingerprint` below for details.
  final pulumi.Input<RuleGroupRuleStatementSqliMatchStatementFieldToMatchJa4Fingerprint>? ja4Fingerprint;
  /// Inspect the request body as JSON. See JSON Body for details.
  final pulumi.Input<RuleGroupRuleStatementSqliMatchStatementFieldToMatchJsonBody>? jsonBody;
  /// Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform.
  final pulumi.Input<Map<String, dynamic>>? method;
  /// Inspect the query string. This is the part of a URL that appears after a `?` character, if any.
  final pulumi.Input<Map<String, dynamic>>? queryString;
  /// Inspect a single header. See Single Header below for details.
  final pulumi.Input<RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleHeader>? singleHeader;
  /// Inspect a single query argument. See Single Query Argument below for details.
  final pulumi.Input<RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleQueryArgument>? singleQueryArgument;
  /// Inspect the part of a URL that follows the "#" symbol, providing additional information about the resource. See URI Fragment below for details.
  final pulumi.Input<RuleGroupRuleStatementSqliMatchStatementFieldToMatchUriFragment>? uriFragment;
  /// Inspect the request URI path. This is the part of a web request that identifies a resource, for example, `/images/daily-ad.jpg`.
  final pulumi.Input<Map<String, dynamic>>? uriPath;

  /// Creates a new [RuleGroupRuleStatementSqliMatchStatementFieldToMatch].
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
  RuleGroupRuleStatementSqliMatchStatementFieldToMatch({
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
      'body': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementSqliMatchStatementFieldToMatchBody, Map<String, dynamic>>(body, (value) => value.toMap()),
      'cookies': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementSqliMatchStatementFieldToMatchCookies, Map<String, dynamic>>(cookies, (value) => value.toMap()),
      'headerOrders': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeaderOrder>, List<Map<String, dynamic>>>(headerOrders, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeaderOrder, Map<String, dynamic>>(value, (value) => value.toMap())),
      'headers': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ja3Fingerprint': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementSqliMatchStatementFieldToMatchJa3Fingerprint, Map<String, dynamic>>(ja3Fingerprint, (value) => value.toMap()),
      'ja4Fingerprint': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementSqliMatchStatementFieldToMatchJa4Fingerprint, Map<String, dynamic>>(ja4Fingerprint, (value) => value.toMap()),
      'jsonBody': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementSqliMatchStatementFieldToMatchJsonBody, Map<String, dynamic>>(jsonBody, (value) => value.toMap()),
      'method': ?method,
      'queryString': ?queryString,
      'singleHeader': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleHeader, Map<String, dynamic>>(singleHeader, (value) => value.toMap()),
      'singleQueryArgument': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleQueryArgument, Map<String, dynamic>>(singleQueryArgument, (value) => value.toMap()),
      'uriFragment': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementSqliMatchStatementFieldToMatchUriFragment, Map<String, dynamic>>(uriFragment, (value) => value.toMap()),
      'uriPath': ?uriPath,
    };
  }

  factory RuleGroupRuleStatementSqliMatchStatementFieldToMatch.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementSqliMatchStatementFieldToMatch(
      allQueryArguments: map['allQueryArguments'] == null ? null : ((map['allQueryArguments'] as Map).cast<String, dynamic>()).input(),
      body: map['body'] == null ? null : (RuleGroupRuleStatementSqliMatchStatementFieldToMatchBody.fromMap((map['body'] as Map).cast<String, dynamic>())).input(),
      cookies: map['cookies'] == null ? null : (RuleGroupRuleStatementSqliMatchStatementFieldToMatchCookies.fromMap((map['cookies'] as Map).cast<String, dynamic>())).input(),
      headerOrders: map['headerOrders'] == null ? null : (pulumi.Input.decodeList<RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeaderOrder>(map['headerOrders'], (value) => RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeaderOrder.fromMap((value as Map).cast<String, dynamic>()))).input(),
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeader>(map['headers'], (value) => RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ja3Fingerprint: map['ja3Fingerprint'] == null ? null : (RuleGroupRuleStatementSqliMatchStatementFieldToMatchJa3Fingerprint.fromMap((map['ja3Fingerprint'] as Map).cast<String, dynamic>())).input(),
      ja4Fingerprint: map['ja4Fingerprint'] == null ? null : (RuleGroupRuleStatementSqliMatchStatementFieldToMatchJa4Fingerprint.fromMap((map['ja4Fingerprint'] as Map).cast<String, dynamic>())).input(),
      jsonBody: map['jsonBody'] == null ? null : (RuleGroupRuleStatementSqliMatchStatementFieldToMatchJsonBody.fromMap((map['jsonBody'] as Map).cast<String, dynamic>())).input(),
      method: map['method'] == null ? null : ((map['method'] as Map).cast<String, dynamic>()).input(),
      queryString: map['queryString'] == null ? null : ((map['queryString'] as Map).cast<String, dynamic>()).input(),
      singleHeader: map['singleHeader'] == null ? null : (RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleHeader.fromMap((map['singleHeader'] as Map).cast<String, dynamic>())).input(),
      singleQueryArgument: map['singleQueryArgument'] == null ? null : (RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleQueryArgument.fromMap((map['singleQueryArgument'] as Map).cast<String, dynamic>())).input(),
      uriFragment: map['uriFragment'] == null ? null : (RuleGroupRuleStatementSqliMatchStatementFieldToMatchUriFragment.fromMap((map['uriFragment'] as Map).cast<String, dynamic>())).input(),
      uriPath: map['uriPath'] == null ? null : ((map['uriPath'] as Map).cast<String, dynamic>()).input(),
    );
  }
}


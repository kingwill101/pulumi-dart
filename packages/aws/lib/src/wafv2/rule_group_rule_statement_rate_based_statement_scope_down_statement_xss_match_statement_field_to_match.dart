// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_body.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_cookies.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_header.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_header_order.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_ja3_fingerprint.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_ja4_fingerprint.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_json_body.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_single_header.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_single_query_argument.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_uri_fragment.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatch {
  /// Inspect all query arguments.
  final Map<String, dynamic>? allQueryArguments;
  /// Inspect the request body, which immediately follows the request headers.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody? body;
  /// Inspect the cookies in the web request. See Cookies below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchCookies? cookies;
  /// Inspect the request headers. See Header Order below for details.
  final List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeaderOrder>? headerOrders;
  /// Inspect the request headers. See Headers below for details.
  final List<RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeader>? headers;
  /// Inspect the JA3 fingerprint. See `ja3_fingerprint` below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchJa3Fingerprint? ja3Fingerprint;
  /// Inspect the JA4 fingerprint. See `ja4_fingerprint` below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchJa4Fingerprint? ja4Fingerprint;
  /// Inspect the request body as JSON. See JSON Body for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchJsonBody? jsonBody;
  /// Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform.
  final Map<String, dynamic>? method;
  /// Inspect the query string. This is the part of a URL that appears after a `?` character, if any.
  final Map<String, dynamic>? queryString;
  /// Inspect a single header. See Single Header below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchSingleHeader? singleHeader;
  /// Inspect a single query argument. See Single Query Argument below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchSingleQueryArgument? singleQueryArgument;
  /// Inspect the part of a URL that follows the "#" symbol, providing additional information about the resource. See URI Fragment below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchUriFragment? uriFragment;
  /// Inspect the request URI path. This is the part of a web request that identifies a resource, for example, `/images/daily-ad.jpg`.
  final Map<String, dynamic>? uriPath;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatch].
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
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatch({
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
      'body': ?body == null ? null : body!.toMap(),
      'cookies': ?cookies == null ? null : cookies!.toMap(),
      'headerOrders': ?headerOrders == null ? null : pulumi.Input.encodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeaderOrder, Map<String, dynamic>>(headerOrders!, (value) => value.toMap()),
      'headers': ?headers == null ? null : pulumi.Input.encodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeader, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'ja3Fingerprint': ?ja3Fingerprint == null ? null : ja3Fingerprint!.toMap(),
      'ja4Fingerprint': ?ja4Fingerprint == null ? null : ja4Fingerprint!.toMap(),
      'jsonBody': ?jsonBody == null ? null : jsonBody!.toMap(),
      'method': ?method,
      'queryString': ?queryString,
      'singleHeader': ?singleHeader == null ? null : singleHeader!.toMap(),
      'singleQueryArgument': ?singleQueryArgument == null ? null : singleQueryArgument!.toMap(),
      'uriFragment': ?uriFragment == null ? null : uriFragment!.toMap(),
      'uriPath': ?uriPath,
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatch.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatch(
      allQueryArguments: map['allQueryArguments'] == null ? null : (map['allQueryArguments'] as Map).cast<String, dynamic>(),
      body: map['body'] == null ? null : RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody.fromMap((map['body'] as Map).cast<String, dynamic>()),
      cookies: map['cookies'] == null ? null : RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchCookies.fromMap((map['cookies'] as Map).cast<String, dynamic>()),
      headerOrders: map['headerOrders'] == null ? null : pulumi.Input.decodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeaderOrder>(map['headerOrders'], (value) => RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeaderOrder.fromMap((value as Map).cast<String, dynamic>())),
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeader>(map['headers'], (value) => RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeader.fromMap((value as Map).cast<String, dynamic>())),
      ja3Fingerprint: map['ja3Fingerprint'] == null ? null : RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchJa3Fingerprint.fromMap((map['ja3Fingerprint'] as Map).cast<String, dynamic>()),
      ja4Fingerprint: map['ja4Fingerprint'] == null ? null : RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchJa4Fingerprint.fromMap((map['ja4Fingerprint'] as Map).cast<String, dynamic>()),
      jsonBody: map['jsonBody'] == null ? null : RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchJsonBody.fromMap((map['jsonBody'] as Map).cast<String, dynamic>()),
      method: map['method'] == null ? null : (map['method'] as Map).cast<String, dynamic>(),
      queryString: map['queryString'] == null ? null : (map['queryString'] as Map).cast<String, dynamic>(),
      singleHeader: map['singleHeader'] == null ? null : RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchSingleHeader.fromMap((map['singleHeader'] as Map).cast<String, dynamic>()),
      singleQueryArgument: map['singleQueryArgument'] == null ? null : RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchSingleQueryArgument.fromMap((map['singleQueryArgument'] as Map).cast<String, dynamic>()),
      uriFragment: map['uriFragment'] == null ? null : RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchUriFragment.fromMap((map['uriFragment'] as Map).cast<String, dynamic>()),
      uriPath: map['uriPath'] == null ? null : (map['uriPath'] as Map).cast<String, dynamic>(),
    );
  }
}


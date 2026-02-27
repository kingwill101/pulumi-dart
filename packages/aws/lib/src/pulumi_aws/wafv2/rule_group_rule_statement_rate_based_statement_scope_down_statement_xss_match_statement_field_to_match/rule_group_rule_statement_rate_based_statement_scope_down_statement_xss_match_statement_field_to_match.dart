// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_body/rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_body.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_cookies/rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_cookies.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_header/rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_header.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_header_order/rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_header_order.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_ja3_fingerprint/rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_ja3_fingerprint.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_ja4_fingerprint/rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_ja4_fingerprint.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_json_body/rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_json_body.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_single_header/rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_single_header.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_single_query_argument/rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_single_query_argument.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_uri_fragment/rule_group_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement_field_to_match_uri_fragment.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatch {
  /// Inspect all query arguments.
  final Map<String, dynamic>? allQueryArguments;

  /// Inspect the request body, which immediately follows the request headers.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody?
      body;

  /// Inspect the cookies in the web request. See Cookies below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchCookies?
      cookies;

  /// Inspect the request headers. See Header Order below for details.
  final List<
          RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeaderOrder>?
      headerOrders;

  /// Inspect the request headers. See Headers below for details.
  final List<
          RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeader>?
      headers;

  /// Inspect the JA3 fingerprint. See `ja3_fingerprint` below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchJa3Fingerprint?
      ja3Fingerprint;

  /// Inspect the JA4 fingerprint. See `ja4_fingerprint` below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchJa4Fingerprint?
      ja4Fingerprint;

  /// Inspect the request body as JSON. See JSON Body for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchJsonBody?
      jsonBody;

  /// Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform.
  final Map<String, dynamic>? method;

  /// Inspect the query string. This is the part of a URL that appears after a `?` character, if any.
  final Map<String, dynamic>? queryString;

  /// Inspect a single header. See Single Header below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchSingleHeader?
      singleHeader;

  /// Inspect a single query argument. See Single Query Argument below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchSingleQueryArgument?
      singleQueryArgument;

  /// Inspect the part of a URL that follows the "#" symbol, providing additional information about the resource. See URI Fragment below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchUriFragment?
      uriFragment;

  /// Inspect the request URI path. This is the part of a web request that identifies a resource, for example, `/images/daily-ad.jpg`.
  final Map<String, dynamic>? uriPath;

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
    final map = <String, dynamic>{};
    final allQueryArgumentsValue = allQueryArguments;
    if (allQueryArgumentsValue != null) {
      map['allQueryArguments'] = allQueryArgumentsValue;
    }
    final bodyValue = body;
    if (bodyValue != null) {
      map['body'] = bodyValue.toMap();
    }
    final cookiesValue = cookies;
    if (cookiesValue != null) {
      map['cookies'] = cookiesValue.toMap();
    }
    final headerOrdersValue = headerOrders;
    if (headerOrdersValue != null) {
      map['headerOrders'] = Input.encodeList<
          RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeaderOrder,
          Map<String, dynamic>>(headerOrdersValue, (value) => value.toMap());
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = Input.encodeList<
          RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeader,
          Map<String, dynamic>>(headersValue, (value) => value.toMap());
    }
    final ja3FingerprintValue = ja3Fingerprint;
    if (ja3FingerprintValue != null) {
      map['ja3Fingerprint'] = ja3FingerprintValue.toMap();
    }
    final ja4FingerprintValue = ja4Fingerprint;
    if (ja4FingerprintValue != null) {
      map['ja4Fingerprint'] = ja4FingerprintValue.toMap();
    }
    final jsonBodyValue = jsonBody;
    if (jsonBodyValue != null) {
      map['jsonBody'] = jsonBodyValue.toMap();
    }
    final methodValue = method;
    if (methodValue != null) {
      map['method'] = methodValue;
    }
    final queryStringValue = queryString;
    if (queryStringValue != null) {
      map['queryString'] = queryStringValue;
    }
    final singleHeaderValue = singleHeader;
    if (singleHeaderValue != null) {
      map['singleHeader'] = singleHeaderValue.toMap();
    }
    final singleQueryArgumentValue = singleQueryArgument;
    if (singleQueryArgumentValue != null) {
      map['singleQueryArgument'] = singleQueryArgumentValue.toMap();
    }
    final uriFragmentValue = uriFragment;
    if (uriFragmentValue != null) {
      map['uriFragment'] = uriFragmentValue.toMap();
    }
    final uriPathValue = uriPath;
    if (uriPathValue != null) {
      map['uriPath'] = uriPathValue;
    }
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatch.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatch(
      allQueryArguments: map['allQueryArguments'] == null
          ? null
          : (map['allQueryArguments'] as Map).cast<String, dynamic>(),
      body: map['body'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody
              .fromMap((map['body'] as Map).cast<String, dynamic>()),
      cookies: map['cookies'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchCookies
              .fromMap((map['cookies'] as Map).cast<String, dynamic>()),
      headerOrders: map['headerOrders'] == null
          ? null
          : Input.decodeList<
                  RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeaderOrder>(
              map['headerOrders'],
              (value) =>
                  RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeaderOrder
                      .fromMap((value as Map).cast<String, dynamic>())),
      headers: map['headers'] == null
          ? null
          : Input.decodeList<
                  RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeader>(
              map['headers'],
              (value) =>
                  RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeader
                      .fromMap((value as Map).cast<String, dynamic>())),
      ja3Fingerprint: map['ja3Fingerprint'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchJa3Fingerprint
              .fromMap((map['ja3Fingerprint'] as Map).cast<String, dynamic>()),
      ja4Fingerprint: map['ja4Fingerprint'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchJa4Fingerprint
              .fromMap((map['ja4Fingerprint'] as Map).cast<String, dynamic>()),
      jsonBody: map['jsonBody'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchJsonBody
              .fromMap((map['jsonBody'] as Map).cast<String, dynamic>()),
      method: map['method'] == null
          ? null
          : (map['method'] as Map).cast<String, dynamic>(),
      queryString: map['queryString'] == null
          ? null
          : (map['queryString'] as Map).cast<String, dynamic>(),
      singleHeader: map['singleHeader'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchSingleHeader
              .fromMap((map['singleHeader'] as Map).cast<String, dynamic>()),
      singleQueryArgument: map['singleQueryArgument'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchSingleQueryArgument
              .fromMap(
                  (map['singleQueryArgument'] as Map).cast<String, dynamic>()),
      uriFragment: map['uriFragment'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchUriFragment
              .fromMap((map['uriFragment'] as Map).cast<String, dynamic>()),
      uriPath: map['uriPath'] == null
          ? null
          : (map['uriPath'] as Map).cast<String, dynamic>(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_body/rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_body.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_cookies/rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_cookies.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_header/rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_header.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_header_order/rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_header_order.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_ja3_fingerprint/rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_ja3_fingerprint.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_ja4_fingerprint/rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_ja4_fingerprint.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_json_body/rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_json_body.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_single_header/rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_single_header.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_single_query_argument/rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_single_query_argument.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_uri_fragment/rule_group_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_uri_fragment.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatch {
  /// Inspect all query arguments.
  final Map<String, dynamic>? allQueryArguments;

  /// Inspect the request body, which immediately follows the request headers.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchBody?
      body;

  /// Inspect the cookies in the web request. See Cookies below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchCookies?
      cookies;

  /// Inspect the request headers. See Header Order below for details.
  final List<
          RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeaderOrder>?
      headerOrders;

  /// Inspect the request headers. See Headers below for details.
  final List<
          RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeader>?
      headers;

  /// Inspect the JA3 fingerprint. See <span pulumi-lang-nodejs="`ja3Fingerprint`" pulumi-lang-dotnet="`Ja3Fingerprint`" pulumi-lang-go="`ja3Fingerprint`" pulumi-lang-python="`ja3_fingerprint`" pulumi-lang-yaml="`ja3Fingerprint`" pulumi-lang-java="`ja3Fingerprint`">`ja3_fingerprint`</span> below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchJa3Fingerprint?
      ja3Fingerprint;

  /// Inspect the JA4 fingerprint. See <span pulumi-lang-nodejs="`ja4Fingerprint`" pulumi-lang-dotnet="`Ja4Fingerprint`" pulumi-lang-go="`ja4Fingerprint`" pulumi-lang-python="`ja4_fingerprint`" pulumi-lang-yaml="`ja4Fingerprint`" pulumi-lang-java="`ja4Fingerprint`">`ja4_fingerprint`</span> below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchJa4Fingerprint?
      ja4Fingerprint;

  /// Inspect the request body as JSON. See JSON Body for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchJsonBody?
      jsonBody;

  /// Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform.
  final Map<String, dynamic>? method;

  /// Inspect the query string. This is the part of a URL that appears after a `?` character, if any.
  final Map<String, dynamic>? queryString;

  /// Inspect a single header. See Single Header below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchSingleHeader?
      singleHeader;

  /// Inspect a single query argument. See Single Query Argument below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchSingleQueryArgument?
      singleQueryArgument;

  /// Inspect the part of a URL that follows the "#" symbol, providing additional information about the resource. See URI Fragment below for details.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchUriFragment?
      uriFragment;

  /// Inspect the request URI path. This is the part of a web request that identifies a resource, for example, `/images/daily-ad.jpg`.
  final Map<String, dynamic>? uriPath;

  RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatch({
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
          RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeaderOrder,
          Map<String, dynamic>>(headerOrdersValue, (value) => value.toMap());
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = Input.encodeList<
          RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeader,
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

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatch.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatch(
      allQueryArguments: map['allQueryArguments'] == null
          ? null
          : (map['allQueryArguments'] as Map).cast<String, dynamic>(),
      body: map['body'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchBody
              .fromMap((map['body'] as Map).cast<String, dynamic>()),
      cookies: map['cookies'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchCookies
              .fromMap((map['cookies'] as Map).cast<String, dynamic>()),
      headerOrders: map['headerOrders'] == null
          ? null
          : Input.decodeList<
                  RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeaderOrder>(
              map['headerOrders'],
              (value) =>
                  RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeaderOrder
                      .fromMap((value as Map).cast<String, dynamic>())),
      headers: map['headers'] == null
          ? null
          : Input.decodeList<
                  RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeader>(
              map['headers'],
              (value) =>
                  RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeader
                      .fromMap((value as Map).cast<String, dynamic>())),
      ja3Fingerprint: map['ja3Fingerprint'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchJa3Fingerprint
              .fromMap((map['ja3Fingerprint'] as Map).cast<String, dynamic>()),
      ja4Fingerprint: map['ja4Fingerprint'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchJa4Fingerprint
              .fromMap((map['ja4Fingerprint'] as Map).cast<String, dynamic>()),
      jsonBody: map['jsonBody'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchJsonBody
              .fromMap((map['jsonBody'] as Map).cast<String, dynamic>()),
      method: map['method'] == null
          ? null
          : (map['method'] as Map).cast<String, dynamic>(),
      queryString: map['queryString'] == null
          ? null
          : (map['queryString'] as Map).cast<String, dynamic>(),
      singleHeader: map['singleHeader'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchSingleHeader
              .fromMap((map['singleHeader'] as Map).cast<String, dynamic>()),
      singleQueryArgument: map['singleQueryArgument'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchSingleQueryArgument
              .fromMap(
                  (map['singleQueryArgument'] as Map).cast<String, dynamic>()),
      uriFragment: map['uriFragment'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchUriFragment
              .fromMap((map['uriFragment'] as Map).cast<String, dynamic>()),
      uriPath: map['uriPath'] == null
          ? null
          : (map['uriPath'] as Map).cast<String, dynamic>(),
    );
  }
}

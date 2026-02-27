// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_body/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_body.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_cookies/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_cookies.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_header/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_header.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_header_order/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_header_order.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_ja3_fingerprint/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_ja3_fingerprint.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_ja4_fingerprint/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_ja4_fingerprint.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_json_body/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_json_body.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_single_header/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_single_header.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_single_query_argument/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_single_query_argument.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_uri_fragment/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement_field_to_match_uri_fragment.dart';

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatch {
  /// Inspect all query arguments.
  final Map<String, dynamic>? allQueryArguments;

  /// Inspect the request body, which immediately follows the request headers. See `body` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchBody?
      body;

  /// Inspect the cookies in the web request. See `cookies` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchCookies?
      cookies;

  /// Inspect a string containing the list of the request's header names, ordered as they appear in the web request that AWS WAF receives for inspection. See `header_order` below for details.
  final List<
          WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeaderOrder>?
      headerOrders;

  /// Inspect the request headers. See `headers` below for details.
  final List<
          WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeader>?
      headers;

  /// Inspect the JA3 fingerprint. See `ja3_fingerprint` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchJa3Fingerprint?
      ja3Fingerprint;

  /// Inspect the JA3 fingerprint. See `ja4_fingerprint` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchJa4Fingerprint?
      ja4Fingerprint;

  /// Inspect the request body as JSON. See `json_body` for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchJsonBody?
      jsonBody;

  /// Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform.
  final Map<String, dynamic>? method;

  /// Inspect the query string. This is the part of a URL that appears after a `?` character, if any.
  final Map<String, dynamic>? queryString;

  /// Inspect a single header. See `single_header` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchSingleHeader?
      singleHeader;

  /// Inspect a single query argument. See `single_query_argument` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchSingleQueryArgument?
      singleQueryArgument;

  /// Inspect the part of a URL that follows the "#" symbol, providing additional information about the resource. See `uri_fragment` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchUriFragment?
      uriFragment;

  /// Inspect the request URI path. This is the part of a web request that identifies a resource, for example, `/images/daily-ad.jpg`.
  final Map<String, dynamic>? uriPath;

  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatch({
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
      map['headerOrders'] = pulumi.Input.encodeList<
          WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeaderOrder,
          Map<String, dynamic>>(headerOrdersValue, (value) => value.toMap());
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = pulumi.Input.encodeList<
          WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeader,
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

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatch.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatch(
      allQueryArguments: map['allQueryArguments'] == null
          ? null
          : (map['allQueryArguments'] as Map).cast<String, dynamic>(),
      body: map['body'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchBody
              .fromMap((map['body'] as Map).cast<String, dynamic>()),
      cookies: map['cookies'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchCookies
              .fromMap((map['cookies'] as Map).cast<String, dynamic>()),
      headerOrders: map['headerOrders'] == null
          ? null
          : pulumi.Input.decodeList<
                  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeaderOrder>(
              map['headerOrders'],
              (value) =>
                  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeaderOrder
                      .fromMap((value as Map).cast<String, dynamic>())),
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<
                  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeader>(
              map['headers'],
              (value) =>
                  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchHeader
                      .fromMap((value as Map).cast<String, dynamic>())),
      ja3Fingerprint: map['ja3Fingerprint'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchJa3Fingerprint
              .fromMap((map['ja3Fingerprint'] as Map).cast<String, dynamic>()),
      ja4Fingerprint: map['ja4Fingerprint'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchJa4Fingerprint
              .fromMap((map['ja4Fingerprint'] as Map).cast<String, dynamic>()),
      jsonBody: map['jsonBody'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchJsonBody
              .fromMap((map['jsonBody'] as Map).cast<String, dynamic>()),
      method: map['method'] == null
          ? null
          : (map['method'] as Map).cast<String, dynamic>(),
      queryString: map['queryString'] == null
          ? null
          : (map['queryString'] as Map).cast<String, dynamic>(),
      singleHeader: map['singleHeader'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchSingleHeader
              .fromMap((map['singleHeader'] as Map).cast<String, dynamic>()),
      singleQueryArgument: map['singleQueryArgument'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchSingleQueryArgument
              .fromMap(
                  (map['singleQueryArgument'] as Map).cast<String, dynamic>()),
      uriFragment: map['uriFragment'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchUriFragment
              .fromMap((map['uriFragment'] as Map).cast<String, dynamic>()),
      uriPath: map['uriPath'] == null
          ? null
          : (map['uriPath'] as Map).cast<String, dynamic>(),
    );
  }
}

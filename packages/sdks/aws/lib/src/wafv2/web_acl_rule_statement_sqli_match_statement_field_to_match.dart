// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_sqli_match_statement_field_to_match_body.dart';
import 'web_acl_rule_statement_sqli_match_statement_field_to_match_cookies.dart';
import 'web_acl_rule_statement_sqli_match_statement_field_to_match_header.dart';
import 'web_acl_rule_statement_sqli_match_statement_field_to_match_header_order.dart';
import 'web_acl_rule_statement_sqli_match_statement_field_to_match_ja3_fingerprint.dart';
import 'web_acl_rule_statement_sqli_match_statement_field_to_match_ja4_fingerprint.dart';
import 'web_acl_rule_statement_sqli_match_statement_field_to_match_json_body.dart';
import 'web_acl_rule_statement_sqli_match_statement_field_to_match_single_header.dart';
import 'web_acl_rule_statement_sqli_match_statement_field_to_match_single_query_argument.dart';
import 'web_acl_rule_statement_sqli_match_statement_field_to_match_uri_fragment.dart';

class WebAclRuleStatementSqliMatchStatementFieldToMatch {
  /// Inspect all query arguments.
  final pulumi.Input<Map<String, dynamic>>? allQueryArguments;
  /// Inspect the request body, which immediately follows the request headers. See `body` below for details.
  final pulumi.Input<WebAclRuleStatementSqliMatchStatementFieldToMatchBody>? body;
  /// Inspect the cookies in the web request. See `cookies` below for details.
  final pulumi.Input<WebAclRuleStatementSqliMatchStatementFieldToMatchCookies>? cookies;
  /// Inspect a string containing the list of the request's header names, ordered as they appear in the web request that AWS WAF receives for inspection. See `header_order` below for details.
  final pulumi.Input<List<WebAclRuleStatementSqliMatchStatementFieldToMatchHeaderOrder>>? headerOrders;
  /// Inspect the request headers. See `headers` below for details.
  final pulumi.Input<List<WebAclRuleStatementSqliMatchStatementFieldToMatchHeader>>? headers;
  /// Inspect the JA3 fingerprint. See `ja3_fingerprint` below for details.
  final pulumi.Input<WebAclRuleStatementSqliMatchStatementFieldToMatchJa3Fingerprint>? ja3Fingerprint;
  /// Inspect the JA3 fingerprint. See `ja4_fingerprint` below for details.
  final pulumi.Input<WebAclRuleStatementSqliMatchStatementFieldToMatchJa4Fingerprint>? ja4Fingerprint;
  /// Inspect the request body as JSON. See `json_body` for details.
  final pulumi.Input<WebAclRuleStatementSqliMatchStatementFieldToMatchJsonBody>? jsonBody;
  /// Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform.
  final pulumi.Input<Map<String, dynamic>>? method;
  /// Inspect the query string. This is the part of a URL that appears after a `?` character, if any.
  final pulumi.Input<Map<String, dynamic>>? queryString;
  /// Inspect a single header. See `single_header` below for details.
  final pulumi.Input<WebAclRuleStatementSqliMatchStatementFieldToMatchSingleHeader>? singleHeader;
  /// Inspect a single query argument. See `single_query_argument` below for details.
  final pulumi.Input<WebAclRuleStatementSqliMatchStatementFieldToMatchSingleQueryArgument>? singleQueryArgument;
  /// Inspect the part of a URL that follows the "#" symbol, providing additional information about the resource. See `uri_fragment` below for details.
  final pulumi.Input<WebAclRuleStatementSqliMatchStatementFieldToMatchUriFragment>? uriFragment;
  /// Inspect the request URI path. This is the part of a web request that identifies a resource, for example, `/images/daily-ad.jpg`.
  final pulumi.Input<Map<String, dynamic>>? uriPath;

  /// Creates a new [WebAclRuleStatementSqliMatchStatementFieldToMatch].
  /// [allQueryArguments] Inspect all query arguments.
  /// [body] Inspect the request body, which immediately follows the request headers. See `body` below for details.
  /// [cookies] Inspect the cookies in the web request. See `cookies` below for details.
  /// [headerOrders] Inspect a string containing the list of the request's header names, ordered as they appear in the web request that AWS WAF receives for inspection. See `header_order` below for details.
  /// [headers] Inspect the request headers. See `headers` below for details.
  /// [ja3Fingerprint] Inspect the JA3 fingerprint. See `ja3_fingerprint` below for details.
  /// [ja4Fingerprint] Inspect the JA3 fingerprint. See `ja4_fingerprint` below for details.
  /// [jsonBody] Inspect the request body as JSON. See `json_body` for details.
  /// [method] Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform.
  /// [queryString] Inspect the query string. This is the part of a URL that appears after a `?` character, if any.
  /// [singleHeader] Inspect a single header. See `single_header` below for details.
  /// [singleQueryArgument] Inspect a single query argument. See `single_query_argument` below for details.
  /// [uriFragment] Inspect the part of a URL that follows the "#" symbol, providing additional information about the resource. See `uri_fragment` below for details.
  /// [uriPath] Inspect the request URI path. This is the part of a web request that identifies a resource, for example, `/images/daily-ad.jpg`.
  WebAclRuleStatementSqliMatchStatementFieldToMatch({
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
      'body': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementSqliMatchStatementFieldToMatchBody, Map<String, dynamic>>(body, (value) => value.toMap()),
      'cookies': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementSqliMatchStatementFieldToMatchCookies, Map<String, dynamic>>(cookies, (value) => value.toMap()),
      'headerOrders': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementSqliMatchStatementFieldToMatchHeaderOrder>, List<Map<String, dynamic>>>(headerOrders, (value) => pulumi.Input.encodeList<WebAclRuleStatementSqliMatchStatementFieldToMatchHeaderOrder, Map<String, dynamic>>(value, (value) => value.toMap())),
      'headers': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementSqliMatchStatementFieldToMatchHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<WebAclRuleStatementSqliMatchStatementFieldToMatchHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ja3Fingerprint': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementSqliMatchStatementFieldToMatchJa3Fingerprint, Map<String, dynamic>>(ja3Fingerprint, (value) => value.toMap()),
      'ja4Fingerprint': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementSqliMatchStatementFieldToMatchJa4Fingerprint, Map<String, dynamic>>(ja4Fingerprint, (value) => value.toMap()),
      'jsonBody': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementSqliMatchStatementFieldToMatchJsonBody, Map<String, dynamic>>(jsonBody, (value) => value.toMap()),
      'method': ?method,
      'queryString': ?queryString,
      'singleHeader': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementSqliMatchStatementFieldToMatchSingleHeader, Map<String, dynamic>>(singleHeader, (value) => value.toMap()),
      'singleQueryArgument': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementSqliMatchStatementFieldToMatchSingleQueryArgument, Map<String, dynamic>>(singleQueryArgument, (value) => value.toMap()),
      'uriFragment': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementSqliMatchStatementFieldToMatchUriFragment, Map<String, dynamic>>(uriFragment, (value) => value.toMap()),
      'uriPath': ?uriPath,
    };
  }

  factory WebAclRuleStatementSqliMatchStatementFieldToMatch.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementSqliMatchStatementFieldToMatch(
      allQueryArguments: map['allQueryArguments'] == null ? null : ((map['allQueryArguments'] as Map).cast<String, dynamic>()).input(),
      body: map['body'] == null ? null : (WebAclRuleStatementSqliMatchStatementFieldToMatchBody.fromMap((map['body'] as Map).cast<String, dynamic>())).input(),
      cookies: map['cookies'] == null ? null : (WebAclRuleStatementSqliMatchStatementFieldToMatchCookies.fromMap((map['cookies'] as Map).cast<String, dynamic>())).input(),
      headerOrders: map['headerOrders'] == null ? null : (pulumi.Input.decodeList<WebAclRuleStatementSqliMatchStatementFieldToMatchHeaderOrder>(map['headerOrders'], (value) => WebAclRuleStatementSqliMatchStatementFieldToMatchHeaderOrder.fromMap((value as Map).cast<String, dynamic>()))).input(),
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<WebAclRuleStatementSqliMatchStatementFieldToMatchHeader>(map['headers'], (value) => WebAclRuleStatementSqliMatchStatementFieldToMatchHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ja3Fingerprint: map['ja3Fingerprint'] == null ? null : (WebAclRuleStatementSqliMatchStatementFieldToMatchJa3Fingerprint.fromMap((map['ja3Fingerprint'] as Map).cast<String, dynamic>())).input(),
      ja4Fingerprint: map['ja4Fingerprint'] == null ? null : (WebAclRuleStatementSqliMatchStatementFieldToMatchJa4Fingerprint.fromMap((map['ja4Fingerprint'] as Map).cast<String, dynamic>())).input(),
      jsonBody: map['jsonBody'] == null ? null : (WebAclRuleStatementSqliMatchStatementFieldToMatchJsonBody.fromMap((map['jsonBody'] as Map).cast<String, dynamic>())).input(),
      method: map['method'] == null ? null : ((map['method'] as Map).cast<String, dynamic>()).input(),
      queryString: map['queryString'] == null ? null : ((map['queryString'] as Map).cast<String, dynamic>()).input(),
      singleHeader: map['singleHeader'] == null ? null : (WebAclRuleStatementSqliMatchStatementFieldToMatchSingleHeader.fromMap((map['singleHeader'] as Map).cast<String, dynamic>())).input(),
      singleQueryArgument: map['singleQueryArgument'] == null ? null : (WebAclRuleStatementSqliMatchStatementFieldToMatchSingleQueryArgument.fromMap((map['singleQueryArgument'] as Map).cast<String, dynamic>())).input(),
      uriFragment: map['uriFragment'] == null ? null : (WebAclRuleStatementSqliMatchStatementFieldToMatchUriFragment.fromMap((map['uriFragment'] as Map).cast<String, dynamic>())).input(),
      uriPath: map['uriPath'] == null ? null : ((map['uriPath'] as Map).cast<String, dynamic>()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_size_constraint_statement_field_to_match_body.dart';
import 'web_acl_rule_statement_size_constraint_statement_field_to_match_cookies.dart';
import 'web_acl_rule_statement_size_constraint_statement_field_to_match_header.dart';
import 'web_acl_rule_statement_size_constraint_statement_field_to_match_header_order.dart';
import 'web_acl_rule_statement_size_constraint_statement_field_to_match_ja3_fingerprint.dart';
import 'web_acl_rule_statement_size_constraint_statement_field_to_match_ja4_fingerprint.dart';
import 'web_acl_rule_statement_size_constraint_statement_field_to_match_json_body.dart';
import 'web_acl_rule_statement_size_constraint_statement_field_to_match_single_header.dart';
import 'web_acl_rule_statement_size_constraint_statement_field_to_match_single_query_argument.dart';
import 'web_acl_rule_statement_size_constraint_statement_field_to_match_uri_fragment.dart';

class WebAclRuleStatementSizeConstraintStatementFieldToMatch {
  /// Inspect all query arguments.
  final Map<String, dynamic>? allQueryArguments;
  /// Inspect the request body, which immediately follows the request headers. See `body` below for details.
  final WebAclRuleStatementSizeConstraintStatementFieldToMatchBody? body;
  /// Inspect the cookies in the web request. See `cookies` below for details.
  final WebAclRuleStatementSizeConstraintStatementFieldToMatchCookies? cookies;
  /// Inspect a string containing the list of the request's header names, ordered as they appear in the web request that AWS WAF receives for inspection. See `header_order` below for details.
  final List<WebAclRuleStatementSizeConstraintStatementFieldToMatchHeaderOrder>? headerOrders;
  /// Inspect the request headers. See `headers` below for details.
  final List<WebAclRuleStatementSizeConstraintStatementFieldToMatchHeader>? headers;
  /// Inspect the JA3 fingerprint. See `ja3_fingerprint` below for details.
  final WebAclRuleStatementSizeConstraintStatementFieldToMatchJa3Fingerprint? ja3Fingerprint;
  /// Inspect the JA3 fingerprint. See `ja4_fingerprint` below for details.
  final WebAclRuleStatementSizeConstraintStatementFieldToMatchJa4Fingerprint? ja4Fingerprint;
  /// Inspect the request body as JSON. See `json_body` for details.
  final WebAclRuleStatementSizeConstraintStatementFieldToMatchJsonBody? jsonBody;
  /// Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform.
  final Map<String, dynamic>? method;
  /// Inspect the query string. This is the part of a URL that appears after a `?` character, if any.
  final Map<String, dynamic>? queryString;
  /// Inspect a single header. See `single_header` below for details.
  final WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleHeader? singleHeader;
  /// Inspect a single query argument. See `single_query_argument` below for details.
  final WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument? singleQueryArgument;
  /// Inspect the part of a URL that follows the "#" symbol, providing additional information about the resource. See `uri_fragment` below for details.
  final WebAclRuleStatementSizeConstraintStatementFieldToMatchUriFragment? uriFragment;
  /// Inspect the request URI path. This is the part of a web request that identifies a resource, for example, `/images/daily-ad.jpg`.
  final Map<String, dynamic>? uriPath;

  /// Creates a new [WebAclRuleStatementSizeConstraintStatementFieldToMatch].
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
  WebAclRuleStatementSizeConstraintStatementFieldToMatch({
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
      'headerOrders': ?headerOrders == null ? null : pulumi.Input.encodeList<WebAclRuleStatementSizeConstraintStatementFieldToMatchHeaderOrder, Map<String, dynamic>>(headerOrders!, (value) => value.toMap()),
      'headers': ?headers == null ? null : pulumi.Input.encodeList<WebAclRuleStatementSizeConstraintStatementFieldToMatchHeader, Map<String, dynamic>>(headers!, (value) => value.toMap()),
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

  factory WebAclRuleStatementSizeConstraintStatementFieldToMatch.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementSizeConstraintStatementFieldToMatch(
      allQueryArguments: map['allQueryArguments'] == null ? null : (map['allQueryArguments'] as Map).cast<String, dynamic>(),
      body: map['body'] == null ? null : WebAclRuleStatementSizeConstraintStatementFieldToMatchBody.fromMap((map['body'] as Map).cast<String, dynamic>()),
      cookies: map['cookies'] == null ? null : WebAclRuleStatementSizeConstraintStatementFieldToMatchCookies.fromMap((map['cookies'] as Map).cast<String, dynamic>()),
      headerOrders: map['headerOrders'] == null ? null : pulumi.Input.decodeList<WebAclRuleStatementSizeConstraintStatementFieldToMatchHeaderOrder>(map['headerOrders'], (value) => WebAclRuleStatementSizeConstraintStatementFieldToMatchHeaderOrder.fromMap((value as Map).cast<String, dynamic>())),
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<WebAclRuleStatementSizeConstraintStatementFieldToMatchHeader>(map['headers'], (value) => WebAclRuleStatementSizeConstraintStatementFieldToMatchHeader.fromMap((value as Map).cast<String, dynamic>())),
      ja3Fingerprint: map['ja3Fingerprint'] == null ? null : WebAclRuleStatementSizeConstraintStatementFieldToMatchJa3Fingerprint.fromMap((map['ja3Fingerprint'] as Map).cast<String, dynamic>()),
      ja4Fingerprint: map['ja4Fingerprint'] == null ? null : WebAclRuleStatementSizeConstraintStatementFieldToMatchJa4Fingerprint.fromMap((map['ja4Fingerprint'] as Map).cast<String, dynamic>()),
      jsonBody: map['jsonBody'] == null ? null : WebAclRuleStatementSizeConstraintStatementFieldToMatchJsonBody.fromMap((map['jsonBody'] as Map).cast<String, dynamic>()),
      method: map['method'] == null ? null : (map['method'] as Map).cast<String, dynamic>(),
      queryString: map['queryString'] == null ? null : (map['queryString'] as Map).cast<String, dynamic>(),
      singleHeader: map['singleHeader'] == null ? null : WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleHeader.fromMap((map['singleHeader'] as Map).cast<String, dynamic>()),
      singleQueryArgument: map['singleQueryArgument'] == null ? null : WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument.fromMap((map['singleQueryArgument'] as Map).cast<String, dynamic>()),
      uriFragment: map['uriFragment'] == null ? null : WebAclRuleStatementSizeConstraintStatementFieldToMatchUriFragment.fromMap((map['uriFragment'] as Map).cast<String, dynamic>()),
      uriPath: map['uriPath'] == null ? null : (map['uriPath'] as Map).cast<String, dynamic>(),
    );
  }
}


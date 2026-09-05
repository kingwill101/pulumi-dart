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
  final pulumi.Input<Map<String, dynamic>?>? allQueryArguments;
  /// Inspect the request body, which immediately follows the request headers.
  final pulumi.Input<RuleGroupRuleStatementSqliMatchStatementFieldToMatchBody?>? body;
  /// Inspect the cookies in the web request. See Cookies below for details.
  final pulumi.Input<RuleGroupRuleStatementSqliMatchStatementFieldToMatchCookies?>? cookies;
  /// Inspect the request headers. See Header Order below for details.
  final pulumi.Input<List<RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeaderOrder>?>? headerOrders;
  /// Inspect the request headers. See Headers below for details.
  final pulumi.Input<List<RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeader>?>? headers;
  /// Inspect the JA3 fingerprint. See `ja3Fingerprint` below for details.
  final pulumi.Input<RuleGroupRuleStatementSqliMatchStatementFieldToMatchJa3Fingerprint?>? ja3Fingerprint;
  /// Inspect the JA4 fingerprint. See `ja4Fingerprint` below for details.
  final pulumi.Input<RuleGroupRuleStatementSqliMatchStatementFieldToMatchJa4Fingerprint?>? ja4Fingerprint;
  /// Inspect the request body as JSON. See JSON Body for details.
  final pulumi.Input<RuleGroupRuleStatementSqliMatchStatementFieldToMatchJsonBody?>? jsonBody;
  /// Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform.
  final pulumi.Input<Map<String, dynamic>?>? method;
  /// Inspect the query string. This is the part of a URL that appears after a `?` character, if any.
  final pulumi.Input<Map<String, dynamic>?>? queryString;
  /// Inspect a single header. See Single Header below for details.
  final pulumi.Input<RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleHeader?>? singleHeader;
  /// Inspect a single query argument. See Single Query Argument below for details.
  final pulumi.Input<RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleQueryArgument?>? singleQueryArgument;
  /// Inspect the part of a URL that follows the "#" symbol, providing additional information about the resource. See URI Fragment below for details.
  final pulumi.Input<RuleGroupRuleStatementSqliMatchStatementFieldToMatchUriFragment?>? uriFragment;
  /// Inspect the request URI path. This is the part of a web request that identifies a resource, for example, `/images/daily-ad.jpg`.
  final pulumi.Input<Map<String, dynamic>?>? uriPath;

  /// Creates a new [RuleGroupRuleStatementSqliMatchStatementFieldToMatch].
  /// [allQueryArguments] Inspect all query arguments.
  /// [body] Inspect the request body, which immediately follows the request headers.
  /// [cookies] Inspect the cookies in the web request. See Cookies below for details.
  /// [headerOrders] Inspect the request headers. See Header Order below for details.
  /// [headers] Inspect the request headers. See Headers below for details.
  /// [ja3Fingerprint] Inspect the JA3 fingerprint. See `ja3Fingerprint` below for details.
  /// [ja4Fingerprint] Inspect the JA4 fingerprint. See `ja4Fingerprint` below for details.
  /// [jsonBody] Inspect the request body as JSON. See JSON Body for details.
  /// [method] Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform.
  /// [queryString] Inspect the query string. This is the part of a URL that appears after a `?` character, if any.
  /// [singleHeader] Inspect a single header. See Single Header below for details.
  /// [singleQueryArgument] Inspect a single query argument. See Single Query Argument below for details.
  /// [uriFragment] Inspect the part of a URL that follows the "#" symbol, providing additional information about the resource. See URI Fragment below for details.
  /// [uriPath] Inspect the request URI path. This is the part of a web request that identifies a resource, for example, `/images/daily-ad.jpg`.
  const RuleGroupRuleStatementSqliMatchStatementFieldToMatch({
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
      allQueryArguments: (() { final guardedValue = map['allQueryArguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleStatementSqliMatchStatementFieldToMatchBody.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cookies: (() { final guardedValue = map['cookies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleStatementSqliMatchStatementFieldToMatchCookies.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      headerOrders: (() { final guardedValue = map['headerOrders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeaderOrder>(guardedValue, (value) => RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeaderOrder.fromMap((value as Map).cast<String, dynamic>()))); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeader>(guardedValue, (value) => RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ja3Fingerprint: (() { final guardedValue = map['ja3Fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleStatementSqliMatchStatementFieldToMatchJa3Fingerprint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ja4Fingerprint: (() { final guardedValue = map['ja4Fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleStatementSqliMatchStatementFieldToMatchJa4Fingerprint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jsonBody: (() { final guardedValue = map['jsonBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleStatementSqliMatchStatementFieldToMatchJsonBody.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      queryString: (() { final guardedValue = map['queryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      singleHeader: (() { final guardedValue = map['singleHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleHeader.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      singleQueryArgument: (() { final guardedValue = map['singleQueryArgument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleQueryArgument.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uriFragment: (() { final guardedValue = map['uriFragment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleStatementSqliMatchStatementFieldToMatchUriFragment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uriPath: (() { final guardedValue = map['uriPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

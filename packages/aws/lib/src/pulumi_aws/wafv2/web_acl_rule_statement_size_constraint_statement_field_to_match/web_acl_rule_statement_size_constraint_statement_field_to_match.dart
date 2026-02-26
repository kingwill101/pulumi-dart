// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_rule_statement_size_constraint_statement_field_to_match_body/web_acl_rule_statement_size_constraint_statement_field_to_match_body.dart';
import '../web_acl_rule_statement_size_constraint_statement_field_to_match_cookies/web_acl_rule_statement_size_constraint_statement_field_to_match_cookies.dart';
import '../web_acl_rule_statement_size_constraint_statement_field_to_match_header/web_acl_rule_statement_size_constraint_statement_field_to_match_header.dart';
import '../web_acl_rule_statement_size_constraint_statement_field_to_match_header_order/web_acl_rule_statement_size_constraint_statement_field_to_match_header_order.dart';
import '../web_acl_rule_statement_size_constraint_statement_field_to_match_ja3_fingerprint/web_acl_rule_statement_size_constraint_statement_field_to_match_ja3_fingerprint.dart';
import '../web_acl_rule_statement_size_constraint_statement_field_to_match_ja4_fingerprint/web_acl_rule_statement_size_constraint_statement_field_to_match_ja4_fingerprint.dart';
import '../web_acl_rule_statement_size_constraint_statement_field_to_match_json_body/web_acl_rule_statement_size_constraint_statement_field_to_match_json_body.dart';
import '../web_acl_rule_statement_size_constraint_statement_field_to_match_single_header/web_acl_rule_statement_size_constraint_statement_field_to_match_single_header.dart';
import '../web_acl_rule_statement_size_constraint_statement_field_to_match_single_query_argument/web_acl_rule_statement_size_constraint_statement_field_to_match_single_query_argument.dart';
import '../web_acl_rule_statement_size_constraint_statement_field_to_match_uri_fragment/web_acl_rule_statement_size_constraint_statement_field_to_match_uri_fragment.dart';

class WebAclRuleStatementSizeConstraintStatementFieldToMatch {
  /// Inspect all query arguments.
  final Map<String, dynamic>? allQueryArguments;

  /// Inspect the request body, which immediately follows the request headers. See <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> below for details.
  final WebAclRuleStatementSizeConstraintStatementFieldToMatchBody? body;

  /// Inspect the cookies in the web request. See <span pulumi-lang-nodejs="`cookies`" pulumi-lang-dotnet="`Cookies`" pulumi-lang-go="`cookies`" pulumi-lang-python="`cookies`" pulumi-lang-yaml="`cookies`" pulumi-lang-java="`cookies`">`cookies`</span> below for details.
  final WebAclRuleStatementSizeConstraintStatementFieldToMatchCookies? cookies;

  /// Inspect a string containing the list of the request's header names, ordered as they appear in the web request that AWS WAF receives for inspection. See <span pulumi-lang-nodejs="`headerOrder`" pulumi-lang-dotnet="`HeaderOrder`" pulumi-lang-go="`headerOrder`" pulumi-lang-python="`header_order`" pulumi-lang-yaml="`headerOrder`" pulumi-lang-java="`headerOrder`">`header_order`</span> below for details.
  final List<WebAclRuleStatementSizeConstraintStatementFieldToMatchHeaderOrder>?
      headerOrders;

  /// Inspect the request headers. See <span pulumi-lang-nodejs="`headers`" pulumi-lang-dotnet="`Headers`" pulumi-lang-go="`headers`" pulumi-lang-python="`headers`" pulumi-lang-yaml="`headers`" pulumi-lang-java="`headers`">`headers`</span> below for details.
  final List<WebAclRuleStatementSizeConstraintStatementFieldToMatchHeader>?
      headers;

  /// Inspect the JA3 fingerprint. See <span pulumi-lang-nodejs="`ja3Fingerprint`" pulumi-lang-dotnet="`Ja3Fingerprint`" pulumi-lang-go="`ja3Fingerprint`" pulumi-lang-python="`ja3_fingerprint`" pulumi-lang-yaml="`ja3Fingerprint`" pulumi-lang-java="`ja3Fingerprint`">`ja3_fingerprint`</span> below for details.
  final WebAclRuleStatementSizeConstraintStatementFieldToMatchJa3Fingerprint?
      ja3Fingerprint;

  /// Inspect the JA3 fingerprint. See <span pulumi-lang-nodejs="`ja4Fingerprint`" pulumi-lang-dotnet="`Ja4Fingerprint`" pulumi-lang-go="`ja4Fingerprint`" pulumi-lang-python="`ja4_fingerprint`" pulumi-lang-yaml="`ja4Fingerprint`" pulumi-lang-java="`ja4Fingerprint`">`ja4_fingerprint`</span> below for details.
  final WebAclRuleStatementSizeConstraintStatementFieldToMatchJa4Fingerprint?
      ja4Fingerprint;

  /// Inspect the request body as JSON. See <span pulumi-lang-nodejs="`jsonBody`" pulumi-lang-dotnet="`JsonBody`" pulumi-lang-go="`jsonBody`" pulumi-lang-python="`json_body`" pulumi-lang-yaml="`jsonBody`" pulumi-lang-java="`jsonBody`">`json_body`</span> for details.
  final WebAclRuleStatementSizeConstraintStatementFieldToMatchJsonBody?
      jsonBody;

  /// Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform.
  final Map<String, dynamic>? method;

  /// Inspect the query string. This is the part of a URL that appears after a `?` character, if any.
  final Map<String, dynamic>? queryString;

  /// Inspect a single header. See <span pulumi-lang-nodejs="`singleHeader`" pulumi-lang-dotnet="`SingleHeader`" pulumi-lang-go="`singleHeader`" pulumi-lang-python="`single_header`" pulumi-lang-yaml="`singleHeader`" pulumi-lang-java="`singleHeader`">`single_header`</span> below for details.
  final WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleHeader?
      singleHeader;

  /// Inspect a single query argument. See <span pulumi-lang-nodejs="`singleQueryArgument`" pulumi-lang-dotnet="`SingleQueryArgument`" pulumi-lang-go="`singleQueryArgument`" pulumi-lang-python="`single_query_argument`" pulumi-lang-yaml="`singleQueryArgument`" pulumi-lang-java="`singleQueryArgument`">`single_query_argument`</span> below for details.
  final WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument?
      singleQueryArgument;

  /// Inspect the part of a URL that follows the "#" symbol, providing additional information about the resource. See <span pulumi-lang-nodejs="`uriFragment`" pulumi-lang-dotnet="`UriFragment`" pulumi-lang-go="`uriFragment`" pulumi-lang-python="`uri_fragment`" pulumi-lang-yaml="`uriFragment`" pulumi-lang-java="`uriFragment`">`uri_fragment`</span> below for details.
  final WebAclRuleStatementSizeConstraintStatementFieldToMatchUriFragment?
      uriFragment;

  /// Inspect the request URI path. This is the part of a web request that identifies a resource, for example, `/images/daily-ad.jpg`.
  final Map<String, dynamic>? uriPath;

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
          WebAclRuleStatementSizeConstraintStatementFieldToMatchHeaderOrder,
          Map<String, dynamic>>(headerOrdersValue, (value) => value.toMap());
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = Input.encodeList<
          WebAclRuleStatementSizeConstraintStatementFieldToMatchHeader,
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

  factory WebAclRuleStatementSizeConstraintStatementFieldToMatch.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementSizeConstraintStatementFieldToMatch(
      allQueryArguments: map['allQueryArguments'] == null
          ? null
          : (map['allQueryArguments'] as Map).cast<String, dynamic>(),
      body: map['body'] == null
          ? null
          : WebAclRuleStatementSizeConstraintStatementFieldToMatchBody.fromMap(
              (map['body'] as Map).cast<String, dynamic>()),
      cookies: map['cookies'] == null
          ? null
          : WebAclRuleStatementSizeConstraintStatementFieldToMatchCookies
              .fromMap((map['cookies'] as Map).cast<String, dynamic>()),
      headerOrders: map['headerOrders'] == null
          ? null
          : Input.decodeList<
                  WebAclRuleStatementSizeConstraintStatementFieldToMatchHeaderOrder>(
              map['headerOrders'],
              (value) =>
                  WebAclRuleStatementSizeConstraintStatementFieldToMatchHeaderOrder
                      .fromMap((value as Map).cast<String, dynamic>())),
      headers: map['headers'] == null
          ? null
          : Input.decodeList<
                  WebAclRuleStatementSizeConstraintStatementFieldToMatchHeader>(
              map['headers'],
              (value) =>
                  WebAclRuleStatementSizeConstraintStatementFieldToMatchHeader
                      .fromMap((value as Map).cast<String, dynamic>())),
      ja3Fingerprint: map['ja3Fingerprint'] == null
          ? null
          : WebAclRuleStatementSizeConstraintStatementFieldToMatchJa3Fingerprint
              .fromMap((map['ja3Fingerprint'] as Map).cast<String, dynamic>()),
      ja4Fingerprint: map['ja4Fingerprint'] == null
          ? null
          : WebAclRuleStatementSizeConstraintStatementFieldToMatchJa4Fingerprint
              .fromMap((map['ja4Fingerprint'] as Map).cast<String, dynamic>()),
      jsonBody: map['jsonBody'] == null
          ? null
          : WebAclRuleStatementSizeConstraintStatementFieldToMatchJsonBody
              .fromMap((map['jsonBody'] as Map).cast<String, dynamic>()),
      method: map['method'] == null
          ? null
          : (map['method'] as Map).cast<String, dynamic>(),
      queryString: map['queryString'] == null
          ? null
          : (map['queryString'] as Map).cast<String, dynamic>(),
      singleHeader: map['singleHeader'] == null
          ? null
          : WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleHeader
              .fromMap((map['singleHeader'] as Map).cast<String, dynamic>()),
      singleQueryArgument: map['singleQueryArgument'] == null
          ? null
          : WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument
              .fromMap(
                  (map['singleQueryArgument'] as Map).cast<String, dynamic>()),
      uriFragment: map['uriFragment'] == null
          ? null
          : WebAclRuleStatementSizeConstraintStatementFieldToMatchUriFragment
              .fromMap((map['uriFragment'] as Map).cast<String, dynamic>()),
      uriPath: map['uriPath'] == null
          ? null
          : (map['uriPath'] as Map).cast<String, dynamic>(),
    );
  }
}

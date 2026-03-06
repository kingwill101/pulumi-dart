// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_and_statement.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_asn_match_statement.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_byte_match_statement.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_geo_match_statement.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_ip_set_reference_statement.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_label_match_statement.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_not_statement.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_or_statement.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_match_statement.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_regex_pattern_set_reference_statement.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_size_constraint_statement.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_sqli_match_statement.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement_xss_match_statement.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatement {
  /// Logical rule statement used to combine other rule statements with AND logic. See `and_statement` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementAndStatement>? andStatement;
  /// Rule statement that inspects web traffic based on the Autonomous System Number (ASN) associated with the request's IP address. See `asn_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatement>? asnMatchStatement;
  /// Rule statement that defines a string match search for AWS WAF to apply to web requests. See `byte_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement>? byteMatchStatement;
  /// Rule statement used to identify web requests based on country of origin. See `geo_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementGeoMatchStatement>? geoMatchStatement;
  /// Rule statement used to detect web requests coming from particular IP addresses or address ranges. See `ip_set_reference_statement` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatement>? ipSetReferenceStatement;
  /// Rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. See `label_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementLabelMatchStatement>? labelMatchStatement;
  /// Logical rule statement used to negate the results of another rule statement. See `not_statement` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementNotStatement>? notStatement;
  /// Logical rule statement used to combine other rule statements with OR logic. See `or_statement` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementOrStatement>? orStatement;
  /// Rule statement used to search web request components for a match against a single regular expression. See `regex_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement>? regexMatchStatement;
  /// Rule statement used to search web request components for matches with regular expressions. See `regex_pattern_set_reference_statement` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatement>? regexPatternSetReferenceStatement;
  /// Rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (&gt;) or less than (&lt;). See `size_constraint_statement` below for more details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatement>? sizeConstraintStatement;
  /// An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. See `sqli_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement>? sqliMatchStatement;
  /// Rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. See `xss_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatement>? xssMatchStatement;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatement].
  /// [andStatement] Logical rule statement used to combine other rule statements with AND logic. See `and_statement` below for details.
  /// [asnMatchStatement] Rule statement that inspects web traffic based on the Autonomous System Number (ASN) associated with the request's IP address. See `asn_match_statement` below for details.
  /// [byteMatchStatement] Rule statement that defines a string match search for AWS WAF to apply to web requests. See `byte_match_statement` below for details.
  /// [geoMatchStatement] Rule statement used to identify web requests based on country of origin. See `geo_match_statement` below for details.
  /// [ipSetReferenceStatement] Rule statement used to detect web requests coming from particular IP addresses or address ranges. See `ip_set_reference_statement` below for details.
  /// [labelMatchStatement] Rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. See `label_match_statement` below for details.
  /// [notStatement] Logical rule statement used to negate the results of another rule statement. See `not_statement` below for details.
  /// [orStatement] Logical rule statement used to combine other rule statements with OR logic. See `or_statement` below for details.
  /// [regexMatchStatement] Rule statement used to search web request components for a match against a single regular expression. See `regex_match_statement` below for details.
  /// [regexPatternSetReferenceStatement] Rule statement used to search web request components for matches with regular expressions. See `regex_pattern_set_reference_statement` below for details.
  /// [sizeConstraintStatement] Rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (&gt;) or less than (&lt;). See `size_constraint_statement` below for more details.
  /// [sqliMatchStatement] An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. See `sqli_match_statement` below for details.
  /// [xssMatchStatement] Rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. See `xss_match_statement` below for details.
  const WebAclRuleStatementRateBasedStatementScopeDownStatement({
    this.andStatement,
    this.asnMatchStatement,
    this.byteMatchStatement,
    this.geoMatchStatement,
    this.ipSetReferenceStatement,
    this.labelMatchStatement,
    this.notStatement,
    this.orStatement,
    this.regexMatchStatement,
    this.regexPatternSetReferenceStatement,
    this.sizeConstraintStatement,
    this.sqliMatchStatement,
    this.xssMatchStatement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'andStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementAndStatement, Map<String, dynamic>>(andStatement, (value) => value.toMap()),
      'asnMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatement, Map<String, dynamic>>(asnMatchStatement, (value) => value.toMap()),
      'byteMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement, Map<String, dynamic>>(byteMatchStatement, (value) => value.toMap()),
      'geoMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementGeoMatchStatement, Map<String, dynamic>>(geoMatchStatement, (value) => value.toMap()),
      'ipSetReferenceStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatement, Map<String, dynamic>>(ipSetReferenceStatement, (value) => value.toMap()),
      'labelMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementLabelMatchStatement, Map<String, dynamic>>(labelMatchStatement, (value) => value.toMap()),
      'notStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementNotStatement, Map<String, dynamic>>(notStatement, (value) => value.toMap()),
      'orStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementOrStatement, Map<String, dynamic>>(orStatement, (value) => value.toMap()),
      'regexMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement, Map<String, dynamic>>(regexMatchStatement, (value) => value.toMap()),
      'regexPatternSetReferenceStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatement, Map<String, dynamic>>(regexPatternSetReferenceStatement, (value) => value.toMap()),
      'sizeConstraintStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatement, Map<String, dynamic>>(sizeConstraintStatement, (value) => value.toMap()),
      'sqliMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement, Map<String, dynamic>>(sqliMatchStatement, (value) => value.toMap()),
      'xssMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatement, Map<String, dynamic>>(xssMatchStatement, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatement(
      andStatement: (() { final guardedValue = map['andStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementAndStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      asnMatchStatement: (() { final guardedValue = map['asnMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      byteMatchStatement: (() { final guardedValue = map['byteMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      geoMatchStatement: (() { final guardedValue = map['geoMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementGeoMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipSetReferenceStatement: (() { final guardedValue = map['ipSetReferenceStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labelMatchStatement: (() { final guardedValue = map['labelMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementLabelMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notStatement: (() { final guardedValue = map['notStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementNotStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      orStatement: (() { final guardedValue = map['orStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementOrStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regexMatchStatement: (() { final guardedValue = map['regexMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regexPatternSetReferenceStatement: (() { final guardedValue = map['regexPatternSetReferenceStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sizeConstraintStatement: (() { final guardedValue = map['sizeConstraintStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqliMatchStatement: (() { final guardedValue = map['sqliMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      xssMatchStatement: (() { final guardedValue = map['xssMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


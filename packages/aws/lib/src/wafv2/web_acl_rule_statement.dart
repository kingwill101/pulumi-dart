// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_and_statement.dart';
import 'web_acl_rule_statement_asn_match_statement.dart';
import 'web_acl_rule_statement_byte_match_statement.dart';
import 'web_acl_rule_statement_geo_match_statement.dart';
import 'web_acl_rule_statement_ip_set_reference_statement.dart';
import 'web_acl_rule_statement_label_match_statement.dart';
import 'web_acl_rule_statement_managed_rule_group_statement.dart';
import 'web_acl_rule_statement_not_statement.dart';
import 'web_acl_rule_statement_or_statement.dart';
import 'web_acl_rule_statement_rate_based_statement.dart';
import 'web_acl_rule_statement_regex_match_statement.dart';
import 'web_acl_rule_statement_regex_pattern_set_reference_statement.dart';
import 'web_acl_rule_statement_rule_group_reference_statement.dart';
import 'web_acl_rule_statement_size_constraint_statement.dart';
import 'web_acl_rule_statement_sqli_match_statement.dart';
import 'web_acl_rule_statement_xss_match_statement.dart';

class WebAclRuleStatement {
  /// Logical rule statement used to combine other rule statements with AND logic. See `and_statement` below for details.
  final WebAclRuleStatementAndStatement? andStatement;

  /// Rule statement that inspects web traffic based on the Autonomous System Number (ASN) associated with the request's IP address. See `asn_match_statement` below for details.
  final WebAclRuleStatementAsnMatchStatement? asnMatchStatement;

  /// Rule statement that defines a string match search for AWS WAF to apply to web requests. See `byte_match_statement` below for details.
  final WebAclRuleStatementByteMatchStatement? byteMatchStatement;

  /// Rule statement used to identify web requests based on country of origin. See `geo_match_statement` below for details.
  final WebAclRuleStatementGeoMatchStatement? geoMatchStatement;

  /// Rule statement used to detect web requests coming from particular IP addresses or address ranges. See `ip_set_reference_statement` below for details.
  final WebAclRuleStatementIpSetReferenceStatement? ipSetReferenceStatement;

  /// Rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. See `label_match_statement` below for details.
  final WebAclRuleStatementLabelMatchStatement? labelMatchStatement;

  /// Rule statement used to run the rules that are defined in a managed rule group.  This statement can not be nested. See `managed_rule_group_statement` below for details.
  final WebAclRuleStatementManagedRuleGroupStatement? managedRuleGroupStatement;

  /// Logical rule statement used to negate the results of another rule statement. See `not_statement` below for details.
  final WebAclRuleStatementNotStatement? notStatement;

  /// Logical rule statement used to combine other rule statements with OR logic. See `or_statement` below for details.
  final WebAclRuleStatementOrStatement? orStatement;

  /// Rate-based rule tracks the rate of requests for each originating `IP address`, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any specified time span. This statement can not be nested. See `rate_based_statement` below for details.
  final WebAclRuleStatementRateBasedStatement? rateBasedStatement;

  /// Rule statement used to search web request components for a match against a single regular expression. See `regex_match_statement` below for details.
  final WebAclRuleStatementRegexMatchStatement? regexMatchStatement;

  /// Rule statement used to search web request components for matches with regular expressions. See `regex_pattern_set_reference_statement` below for details.
  final WebAclRuleStatementRegexPatternSetReferenceStatement?
      regexPatternSetReferenceStatement;

  /// Rule statement used to run the rules that are defined in an WAFv2 Rule Group. See `rule_group_reference_statement` below for details.
  final WebAclRuleStatementRuleGroupReferenceStatement?
      ruleGroupReferenceStatement;

  /// Rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). See `size_constraint_statement` below for more details.
  final WebAclRuleStatementSizeConstraintStatement? sizeConstraintStatement;

  /// An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. See `sqli_match_statement` below for details.
  final WebAclRuleStatementSqliMatchStatement? sqliMatchStatement;

  /// Rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. See `xss_match_statement` below for details.
  final WebAclRuleStatementXssMatchStatement? xssMatchStatement;

  /// Creates a new [WebAclRuleStatement].
  /// [andStatement] Logical rule statement used to combine other rule statements with AND logic. See `and_statement` below for details.
  /// [asnMatchStatement] Rule statement that inspects web traffic based on the Autonomous System Number (ASN) associated with the request's IP address. See `asn_match_statement` below for details.
  /// [byteMatchStatement] Rule statement that defines a string match search for AWS WAF to apply to web requests. See `byte_match_statement` below for details.
  /// [geoMatchStatement] Rule statement used to identify web requests based on country of origin. See `geo_match_statement` below for details.
  /// [ipSetReferenceStatement] Rule statement used to detect web requests coming from particular IP addresses or address ranges. See `ip_set_reference_statement` below for details.
  /// [labelMatchStatement] Rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. See `label_match_statement` below for details.
  /// [managedRuleGroupStatement] Rule statement used to run the rules that are defined in a managed rule group.  This statement can not be nested. See `managed_rule_group_statement` below for details.
  /// [notStatement] Logical rule statement used to negate the results of another rule statement. See `not_statement` below for details.
  /// [orStatement] Logical rule statement used to combine other rule statements with OR logic. See `or_statement` below for details.
  /// [rateBasedStatement] Rate-based rule tracks the rate of requests for each originating `IP address`, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any specified time span. This statement can not be nested. See `rate_based_statement` below for details.
  /// [regexMatchStatement] Rule statement used to search web request components for a match against a single regular expression. See `regex_match_statement` below for details.
  /// [regexPatternSetReferenceStatement] Rule statement used to search web request components for matches with regular expressions. See `regex_pattern_set_reference_statement` below for details.
  /// [ruleGroupReferenceStatement] Rule statement used to run the rules that are defined in an WAFv2 Rule Group. See `rule_group_reference_statement` below for details.
  /// [sizeConstraintStatement] Rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). See `size_constraint_statement` below for more details.
  /// [sqliMatchStatement] An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. See `sqli_match_statement` below for details.
  /// [xssMatchStatement] Rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. See `xss_match_statement` below for details.
  WebAclRuleStatement({
    this.andStatement,
    this.asnMatchStatement,
    this.byteMatchStatement,
    this.geoMatchStatement,
    this.ipSetReferenceStatement,
    this.labelMatchStatement,
    this.managedRuleGroupStatement,
    this.notStatement,
    this.orStatement,
    this.rateBasedStatement,
    this.regexMatchStatement,
    this.regexPatternSetReferenceStatement,
    this.ruleGroupReferenceStatement,
    this.sizeConstraintStatement,
    this.sqliMatchStatement,
    this.xssMatchStatement,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final andStatementValue = andStatement;
    if (andStatementValue != null) {
      map['andStatement'] = andStatementValue.toMap();
    }
    final asnMatchStatementValue = asnMatchStatement;
    if (asnMatchStatementValue != null) {
      map['asnMatchStatement'] = asnMatchStatementValue.toMap();
    }
    final byteMatchStatementValue = byteMatchStatement;
    if (byteMatchStatementValue != null) {
      map['byteMatchStatement'] = byteMatchStatementValue.toMap();
    }
    final geoMatchStatementValue = geoMatchStatement;
    if (geoMatchStatementValue != null) {
      map['geoMatchStatement'] = geoMatchStatementValue.toMap();
    }
    final ipSetReferenceStatementValue = ipSetReferenceStatement;
    if (ipSetReferenceStatementValue != null) {
      map['ipSetReferenceStatement'] = ipSetReferenceStatementValue.toMap();
    }
    final labelMatchStatementValue = labelMatchStatement;
    if (labelMatchStatementValue != null) {
      map['labelMatchStatement'] = labelMatchStatementValue.toMap();
    }
    final managedRuleGroupStatementValue = managedRuleGroupStatement;
    if (managedRuleGroupStatementValue != null) {
      map['managedRuleGroupStatement'] = managedRuleGroupStatementValue.toMap();
    }
    final notStatementValue = notStatement;
    if (notStatementValue != null) {
      map['notStatement'] = notStatementValue.toMap();
    }
    final orStatementValue = orStatement;
    if (orStatementValue != null) {
      map['orStatement'] = orStatementValue.toMap();
    }
    final rateBasedStatementValue = rateBasedStatement;
    if (rateBasedStatementValue != null) {
      map['rateBasedStatement'] = rateBasedStatementValue.toMap();
    }
    final regexMatchStatementValue = regexMatchStatement;
    if (regexMatchStatementValue != null) {
      map['regexMatchStatement'] = regexMatchStatementValue.toMap();
    }
    final regexPatternSetReferenceStatementValue =
        regexPatternSetReferenceStatement;
    if (regexPatternSetReferenceStatementValue != null) {
      map['regexPatternSetReferenceStatement'] =
          regexPatternSetReferenceStatementValue.toMap();
    }
    final ruleGroupReferenceStatementValue = ruleGroupReferenceStatement;
    if (ruleGroupReferenceStatementValue != null) {
      map['ruleGroupReferenceStatement'] =
          ruleGroupReferenceStatementValue.toMap();
    }
    final sizeConstraintStatementValue = sizeConstraintStatement;
    if (sizeConstraintStatementValue != null) {
      map['sizeConstraintStatement'] = sizeConstraintStatementValue.toMap();
    }
    final sqliMatchStatementValue = sqliMatchStatement;
    if (sqliMatchStatementValue != null) {
      map['sqliMatchStatement'] = sqliMatchStatementValue.toMap();
    }
    final xssMatchStatementValue = xssMatchStatement;
    if (xssMatchStatementValue != null) {
      map['xssMatchStatement'] = xssMatchStatementValue.toMap();
    }
    return map;
  }

  factory WebAclRuleStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatement(
      andStatement: map['andStatement'] == null
          ? null
          : WebAclRuleStatementAndStatement.fromMap(
              (map['andStatement'] as Map).cast<String, dynamic>()),
      asnMatchStatement: map['asnMatchStatement'] == null
          ? null
          : WebAclRuleStatementAsnMatchStatement.fromMap(
              (map['asnMatchStatement'] as Map).cast<String, dynamic>()),
      byteMatchStatement: map['byteMatchStatement'] == null
          ? null
          : WebAclRuleStatementByteMatchStatement.fromMap(
              (map['byteMatchStatement'] as Map).cast<String, dynamic>()),
      geoMatchStatement: map['geoMatchStatement'] == null
          ? null
          : WebAclRuleStatementGeoMatchStatement.fromMap(
              (map['geoMatchStatement'] as Map).cast<String, dynamic>()),
      ipSetReferenceStatement: map['ipSetReferenceStatement'] == null
          ? null
          : WebAclRuleStatementIpSetReferenceStatement.fromMap(
              (map['ipSetReferenceStatement'] as Map).cast<String, dynamic>()),
      labelMatchStatement: map['labelMatchStatement'] == null
          ? null
          : WebAclRuleStatementLabelMatchStatement.fromMap(
              (map['labelMatchStatement'] as Map).cast<String, dynamic>()),
      managedRuleGroupStatement: map['managedRuleGroupStatement'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatement.fromMap(
              (map['managedRuleGroupStatement'] as Map)
                  .cast<String, dynamic>()),
      notStatement: map['notStatement'] == null
          ? null
          : WebAclRuleStatementNotStatement.fromMap(
              (map['notStatement'] as Map).cast<String, dynamic>()),
      orStatement: map['orStatement'] == null
          ? null
          : WebAclRuleStatementOrStatement.fromMap(
              (map['orStatement'] as Map).cast<String, dynamic>()),
      rateBasedStatement: map['rateBasedStatement'] == null
          ? null
          : WebAclRuleStatementRateBasedStatement.fromMap(
              (map['rateBasedStatement'] as Map).cast<String, dynamic>()),
      regexMatchStatement: map['regexMatchStatement'] == null
          ? null
          : WebAclRuleStatementRegexMatchStatement.fromMap(
              (map['regexMatchStatement'] as Map).cast<String, dynamic>()),
      regexPatternSetReferenceStatement:
          map['regexPatternSetReferenceStatement'] == null
              ? null
              : WebAclRuleStatementRegexPatternSetReferenceStatement.fromMap(
                  (map['regexPatternSetReferenceStatement'] as Map)
                      .cast<String, dynamic>()),
      ruleGroupReferenceStatement: map['ruleGroupReferenceStatement'] == null
          ? null
          : WebAclRuleStatementRuleGroupReferenceStatement.fromMap(
              (map['ruleGroupReferenceStatement'] as Map)
                  .cast<String, dynamic>()),
      sizeConstraintStatement: map['sizeConstraintStatement'] == null
          ? null
          : WebAclRuleStatementSizeConstraintStatement.fromMap(
              (map['sizeConstraintStatement'] as Map).cast<String, dynamic>()),
      sqliMatchStatement: map['sqliMatchStatement'] == null
          ? null
          : WebAclRuleStatementSqliMatchStatement.fromMap(
              (map['sqliMatchStatement'] as Map).cast<String, dynamic>()),
      xssMatchStatement: map['xssMatchStatement'] == null
          ? null
          : WebAclRuleStatementXssMatchStatement.fromMap(
              (map['xssMatchStatement'] as Map).cast<String, dynamic>()),
    );
  }
}

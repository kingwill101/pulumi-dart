// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<WebAclRuleStatementAndStatement>? andStatement;
  /// Rule statement that inspects web traffic based on the Autonomous System Number (ASN) associated with the request's IP address. See `asn_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementAsnMatchStatement>? asnMatchStatement;
  /// Rule statement that defines a string match search for AWS WAF to apply to web requests. See `byte_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementByteMatchStatement>? byteMatchStatement;
  /// Rule statement used to identify web requests based on country of origin. See `geo_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementGeoMatchStatement>? geoMatchStatement;
  /// Rule statement used to detect web requests coming from particular IP addresses or address ranges. See `ip_set_reference_statement` below for details.
  final pulumi.Input<WebAclRuleStatementIpSetReferenceStatement>? ipSetReferenceStatement;
  /// Rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. See `label_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementLabelMatchStatement>? labelMatchStatement;
  /// Rule statement used to run the rules that are defined in a managed rule group.  This statement can not be nested. See `managed_rule_group_statement` below for details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatement>? managedRuleGroupStatement;
  /// Logical rule statement used to negate the results of another rule statement. See `not_statement` below for details.
  final pulumi.Input<WebAclRuleStatementNotStatement>? notStatement;
  /// Logical rule statement used to combine other rule statements with OR logic. See `or_statement` below for details.
  final pulumi.Input<WebAclRuleStatementOrStatement>? orStatement;
  /// Rate-based rule tracks the rate of requests for each originating `IP address`, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any specified time span. This statement can not be nested. See `rate_based_statement` below for details.
  final pulumi.Input<WebAclRuleStatementRateBasedStatement>? rateBasedStatement;
  /// Rule statement used to search web request components for a match against a single regular expression. See `regex_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementRegexMatchStatement>? regexMatchStatement;
  /// Rule statement used to search web request components for matches with regular expressions. See `regex_pattern_set_reference_statement` below for details.
  final pulumi.Input<WebAclRuleStatementRegexPatternSetReferenceStatement>? regexPatternSetReferenceStatement;
  /// Rule statement used to run the rules that are defined in an WAFv2 Rule Group. See `rule_group_reference_statement` below for details.
  final pulumi.Input<WebAclRuleStatementRuleGroupReferenceStatement>? ruleGroupReferenceStatement;
  /// Rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). See `size_constraint_statement` below for more details.
  final pulumi.Input<WebAclRuleStatementSizeConstraintStatement>? sizeConstraintStatement;
  /// An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. See `sqli_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementSqliMatchStatement>? sqliMatchStatement;
  /// Rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. See `xss_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementXssMatchStatement>? xssMatchStatement;

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
    return <String, dynamic>{
      'andStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementAndStatement, Map<String, dynamic>>(andStatement, (value) => value.toMap()),
      'asnMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementAsnMatchStatement, Map<String, dynamic>>(asnMatchStatement, (value) => value.toMap()),
      'byteMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementByteMatchStatement, Map<String, dynamic>>(byteMatchStatement, (value) => value.toMap()),
      'geoMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementGeoMatchStatement, Map<String, dynamic>>(geoMatchStatement, (value) => value.toMap()),
      'ipSetReferenceStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementIpSetReferenceStatement, Map<String, dynamic>>(ipSetReferenceStatement, (value) => value.toMap()),
      'labelMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementLabelMatchStatement, Map<String, dynamic>>(labelMatchStatement, (value) => value.toMap()),
      'managedRuleGroupStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatement, Map<String, dynamic>>(managedRuleGroupStatement, (value) => value.toMap()),
      'notStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementNotStatement, Map<String, dynamic>>(notStatement, (value) => value.toMap()),
      'orStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementOrStatement, Map<String, dynamic>>(orStatement, (value) => value.toMap()),
      'rateBasedStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatement, Map<String, dynamic>>(rateBasedStatement, (value) => value.toMap()),
      'regexMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRegexMatchStatement, Map<String, dynamic>>(regexMatchStatement, (value) => value.toMap()),
      'regexPatternSetReferenceStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRegexPatternSetReferenceStatement, Map<String, dynamic>>(regexPatternSetReferenceStatement, (value) => value.toMap()),
      'ruleGroupReferenceStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRuleGroupReferenceStatement, Map<String, dynamic>>(ruleGroupReferenceStatement, (value) => value.toMap()),
      'sizeConstraintStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementSizeConstraintStatement, Map<String, dynamic>>(sizeConstraintStatement, (value) => value.toMap()),
      'sqliMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementSqliMatchStatement, Map<String, dynamic>>(sqliMatchStatement, (value) => value.toMap()),
      'xssMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementXssMatchStatement, Map<String, dynamic>>(xssMatchStatement, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatement(
      andStatement: map['andStatement'] == null ? null : (WebAclRuleStatementAndStatement.fromMap((map['andStatement'] as Map).cast<String, dynamic>())).input(),
      asnMatchStatement: map['asnMatchStatement'] == null ? null : (WebAclRuleStatementAsnMatchStatement.fromMap((map['asnMatchStatement'] as Map).cast<String, dynamic>())).input(),
      byteMatchStatement: map['byteMatchStatement'] == null ? null : (WebAclRuleStatementByteMatchStatement.fromMap((map['byteMatchStatement'] as Map).cast<String, dynamic>())).input(),
      geoMatchStatement: map['geoMatchStatement'] == null ? null : (WebAclRuleStatementGeoMatchStatement.fromMap((map['geoMatchStatement'] as Map).cast<String, dynamic>())).input(),
      ipSetReferenceStatement: map['ipSetReferenceStatement'] == null ? null : (WebAclRuleStatementIpSetReferenceStatement.fromMap((map['ipSetReferenceStatement'] as Map).cast<String, dynamic>())).input(),
      labelMatchStatement: map['labelMatchStatement'] == null ? null : (WebAclRuleStatementLabelMatchStatement.fromMap((map['labelMatchStatement'] as Map).cast<String, dynamic>())).input(),
      managedRuleGroupStatement: map['managedRuleGroupStatement'] == null ? null : (WebAclRuleStatementManagedRuleGroupStatement.fromMap((map['managedRuleGroupStatement'] as Map).cast<String, dynamic>())).input(),
      notStatement: map['notStatement'] == null ? null : (WebAclRuleStatementNotStatement.fromMap((map['notStatement'] as Map).cast<String, dynamic>())).input(),
      orStatement: map['orStatement'] == null ? null : (WebAclRuleStatementOrStatement.fromMap((map['orStatement'] as Map).cast<String, dynamic>())).input(),
      rateBasedStatement: map['rateBasedStatement'] == null ? null : (WebAclRuleStatementRateBasedStatement.fromMap((map['rateBasedStatement'] as Map).cast<String, dynamic>())).input(),
      regexMatchStatement: map['regexMatchStatement'] == null ? null : (WebAclRuleStatementRegexMatchStatement.fromMap((map['regexMatchStatement'] as Map).cast<String, dynamic>())).input(),
      regexPatternSetReferenceStatement: map['regexPatternSetReferenceStatement'] == null ? null : (WebAclRuleStatementRegexPatternSetReferenceStatement.fromMap((map['regexPatternSetReferenceStatement'] as Map).cast<String, dynamic>())).input(),
      ruleGroupReferenceStatement: map['ruleGroupReferenceStatement'] == null ? null : (WebAclRuleStatementRuleGroupReferenceStatement.fromMap((map['ruleGroupReferenceStatement'] as Map).cast<String, dynamic>())).input(),
      sizeConstraintStatement: map['sizeConstraintStatement'] == null ? null : (WebAclRuleStatementSizeConstraintStatement.fromMap((map['sizeConstraintStatement'] as Map).cast<String, dynamic>())).input(),
      sqliMatchStatement: map['sqliMatchStatement'] == null ? null : (WebAclRuleStatementSqliMatchStatement.fromMap((map['sqliMatchStatement'] as Map).cast<String, dynamic>())).input(),
      xssMatchStatement: map['xssMatchStatement'] == null ? null : (WebAclRuleStatementXssMatchStatement.fromMap((map['xssMatchStatement'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


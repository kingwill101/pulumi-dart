// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_and_statement.dart';
import 'rule_group_rule_statement_asn_match_statement.dart';
import 'rule_group_rule_statement_byte_match_statement.dart';
import 'rule_group_rule_statement_geo_match_statement.dart';
import 'rule_group_rule_statement_ip_set_reference_statement.dart';
import 'rule_group_rule_statement_label_match_statement.dart';
import 'rule_group_rule_statement_not_statement.dart';
import 'rule_group_rule_statement_or_statement.dart';
import 'rule_group_rule_statement_rate_based_statement.dart';
import 'rule_group_rule_statement_regex_match_statement.dart';
import 'rule_group_rule_statement_regex_pattern_set_reference_statement.dart';
import 'rule_group_rule_statement_size_constraint_statement.dart';
import 'rule_group_rule_statement_sqli_match_statement.dart';
import 'rule_group_rule_statement_xss_match_statement.dart';

class RuleGroupRuleStatement {
  /// A logical rule statement used to combine other rule statements with AND logic. See AND Statement below for details.
  final pulumi.Input<RuleGroupRuleStatementAndStatement>? andStatement;
  /// Rule statement that inspects web traffic based on the Autonomous System Number (ASN) associated with the request's IP address. See `asn_match_statement` below for details.
  final pulumi.Input<RuleGroupRuleStatementAsnMatchStatement>? asnMatchStatement;
  /// A rule statement that defines a string match search for AWS WAF to apply to web requests. See Byte Match Statement below for details.
  final pulumi.Input<RuleGroupRuleStatementByteMatchStatement>? byteMatchStatement;
  /// A rule statement used to identify web requests based on country of origin. See GEO Match Statement below for details.
  final pulumi.Input<RuleGroupRuleStatementGeoMatchStatement>? geoMatchStatement;
  /// A rule statement used to detect web requests coming from particular IP addresses or address ranges. See IP Set Reference Statement below for details.
  final pulumi.Input<RuleGroupRuleStatementIpSetReferenceStatement>? ipSetReferenceStatement;
  /// A rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. See Label Match Statement below for details.
  final pulumi.Input<RuleGroupRuleStatementLabelMatchStatement>? labelMatchStatement;
  /// A logical rule statement used to negate the results of another rule statement. See NOT Statement below for details.
  final pulumi.Input<RuleGroupRuleStatementNotStatement>? notStatement;
  /// A logical rule statement used to combine other rule statements with OR logic. See OR Statement below for details.
  final pulumi.Input<RuleGroupRuleStatementOrStatement>? orStatement;
  /// A rate-based rule tracks the rate of requests for each originating `IP address`, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any `5-minute` time span. This statement can not be nested. See Rate Based Statement below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatement>? rateBasedStatement;
  /// A rule statement used to search web request components for a match against a single regular expression. See Regex Match Statement below for details.
  final pulumi.Input<RuleGroupRuleStatementRegexMatchStatement>? regexMatchStatement;
  /// A rule statement used to search web request components for matches with regular expressions. See Regex Pattern Set Reference Statement below for details.
  final pulumi.Input<RuleGroupRuleStatementRegexPatternSetReferenceStatement>? regexPatternSetReferenceStatement;
  /// A rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). See Size Constraint Statement below for more details.
  final pulumi.Input<RuleGroupRuleStatementSizeConstraintStatement>? sizeConstraintStatement;
  /// An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. See SQL Injection Match Statement below for details.
  final pulumi.Input<RuleGroupRuleStatementSqliMatchStatement>? sqliMatchStatement;
  /// A rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. See XSS Match Statement below for details.
  final pulumi.Input<RuleGroupRuleStatementXssMatchStatement>? xssMatchStatement;

  /// Creates a new [RuleGroupRuleStatement].
  /// [andStatement] A logical rule statement used to combine other rule statements with AND logic. See AND Statement below for details.
  /// [asnMatchStatement] Rule statement that inspects web traffic based on the Autonomous System Number (ASN) associated with the request's IP address. See `asn_match_statement` below for details.
  /// [byteMatchStatement] A rule statement that defines a string match search for AWS WAF to apply to web requests. See Byte Match Statement below for details.
  /// [geoMatchStatement] A rule statement used to identify web requests based on country of origin. See GEO Match Statement below for details.
  /// [ipSetReferenceStatement] A rule statement used to detect web requests coming from particular IP addresses or address ranges. See IP Set Reference Statement below for details.
  /// [labelMatchStatement] A rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. See Label Match Statement below for details.
  /// [notStatement] A logical rule statement used to negate the results of another rule statement. See NOT Statement below for details.
  /// [orStatement] A logical rule statement used to combine other rule statements with OR logic. See OR Statement below for details.
  /// [rateBasedStatement] A rate-based rule tracks the rate of requests for each originating `IP address`, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any `5-minute` time span. This statement can not be nested. See Rate Based Statement below for details.
  /// [regexMatchStatement] A rule statement used to search web request components for a match against a single regular expression. See Regex Match Statement below for details.
  /// [regexPatternSetReferenceStatement] A rule statement used to search web request components for matches with regular expressions. See Regex Pattern Set Reference Statement below for details.
  /// [sizeConstraintStatement] A rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). See Size Constraint Statement below for more details.
  /// [sqliMatchStatement] An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. See SQL Injection Match Statement below for details.
  /// [xssMatchStatement] A rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. See XSS Match Statement below for details.
  RuleGroupRuleStatement({
    this.andStatement,
    this.asnMatchStatement,
    this.byteMatchStatement,
    this.geoMatchStatement,
    this.ipSetReferenceStatement,
    this.labelMatchStatement,
    this.notStatement,
    this.orStatement,
    this.rateBasedStatement,
    this.regexMatchStatement,
    this.regexPatternSetReferenceStatement,
    this.sizeConstraintStatement,
    this.sqliMatchStatement,
    this.xssMatchStatement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'andStatement': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementAndStatement, Map<String, dynamic>>(andStatement, (value) => value.toMap()),
      'asnMatchStatement': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementAsnMatchStatement, Map<String, dynamic>>(asnMatchStatement, (value) => value.toMap()),
      'byteMatchStatement': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementByteMatchStatement, Map<String, dynamic>>(byteMatchStatement, (value) => value.toMap()),
      'geoMatchStatement': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementGeoMatchStatement, Map<String, dynamic>>(geoMatchStatement, (value) => value.toMap()),
      'ipSetReferenceStatement': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementIpSetReferenceStatement, Map<String, dynamic>>(ipSetReferenceStatement, (value) => value.toMap()),
      'labelMatchStatement': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementLabelMatchStatement, Map<String, dynamic>>(labelMatchStatement, (value) => value.toMap()),
      'notStatement': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementNotStatement, Map<String, dynamic>>(notStatement, (value) => value.toMap()),
      'orStatement': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementOrStatement, Map<String, dynamic>>(orStatement, (value) => value.toMap()),
      'rateBasedStatement': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatement, Map<String, dynamic>>(rateBasedStatement, (value) => value.toMap()),
      'regexMatchStatement': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRegexMatchStatement, Map<String, dynamic>>(regexMatchStatement, (value) => value.toMap()),
      'regexPatternSetReferenceStatement': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRegexPatternSetReferenceStatement, Map<String, dynamic>>(regexPatternSetReferenceStatement, (value) => value.toMap()),
      'sizeConstraintStatement': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementSizeConstraintStatement, Map<String, dynamic>>(sizeConstraintStatement, (value) => value.toMap()),
      'sqliMatchStatement': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementSqliMatchStatement, Map<String, dynamic>>(sqliMatchStatement, (value) => value.toMap()),
      'xssMatchStatement': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementXssMatchStatement, Map<String, dynamic>>(xssMatchStatement, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatement(
      andStatement: map['andStatement'] == null ? null : (RuleGroupRuleStatementAndStatement.fromMap((map['andStatement'] as Map).cast<String, dynamic>())).input(),
      asnMatchStatement: map['asnMatchStatement'] == null ? null : (RuleGroupRuleStatementAsnMatchStatement.fromMap((map['asnMatchStatement'] as Map).cast<String, dynamic>())).input(),
      byteMatchStatement: map['byteMatchStatement'] == null ? null : (RuleGroupRuleStatementByteMatchStatement.fromMap((map['byteMatchStatement'] as Map).cast<String, dynamic>())).input(),
      geoMatchStatement: map['geoMatchStatement'] == null ? null : (RuleGroupRuleStatementGeoMatchStatement.fromMap((map['geoMatchStatement'] as Map).cast<String, dynamic>())).input(),
      ipSetReferenceStatement: map['ipSetReferenceStatement'] == null ? null : (RuleGroupRuleStatementIpSetReferenceStatement.fromMap((map['ipSetReferenceStatement'] as Map).cast<String, dynamic>())).input(),
      labelMatchStatement: map['labelMatchStatement'] == null ? null : (RuleGroupRuleStatementLabelMatchStatement.fromMap((map['labelMatchStatement'] as Map).cast<String, dynamic>())).input(),
      notStatement: map['notStatement'] == null ? null : (RuleGroupRuleStatementNotStatement.fromMap((map['notStatement'] as Map).cast<String, dynamic>())).input(),
      orStatement: map['orStatement'] == null ? null : (RuleGroupRuleStatementOrStatement.fromMap((map['orStatement'] as Map).cast<String, dynamic>())).input(),
      rateBasedStatement: map['rateBasedStatement'] == null ? null : (RuleGroupRuleStatementRateBasedStatement.fromMap((map['rateBasedStatement'] as Map).cast<String, dynamic>())).input(),
      regexMatchStatement: map['regexMatchStatement'] == null ? null : (RuleGroupRuleStatementRegexMatchStatement.fromMap((map['regexMatchStatement'] as Map).cast<String, dynamic>())).input(),
      regexPatternSetReferenceStatement: map['regexPatternSetReferenceStatement'] == null ? null : (RuleGroupRuleStatementRegexPatternSetReferenceStatement.fromMap((map['regexPatternSetReferenceStatement'] as Map).cast<String, dynamic>())).input(),
      sizeConstraintStatement: map['sizeConstraintStatement'] == null ? null : (RuleGroupRuleStatementSizeConstraintStatement.fromMap((map['sizeConstraintStatement'] as Map).cast<String, dynamic>())).input(),
      sqliMatchStatement: map['sqliMatchStatement'] == null ? null : (RuleGroupRuleStatementSqliMatchStatement.fromMap((map['sqliMatchStatement'] as Map).cast<String, dynamic>())).input(),
      xssMatchStatement: map['xssMatchStatement'] == null ? null : (RuleGroupRuleStatementXssMatchStatement.fromMap((map['xssMatchStatement'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


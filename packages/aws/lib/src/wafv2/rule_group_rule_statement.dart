// ignore_for_file: unused_element, unnecessary_cast

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
  final RuleGroupRuleStatementAndStatement? andStatement;
  /// Rule statement that inspects web traffic based on the Autonomous System Number (ASN) associated with the request's IP address. See `asn_match_statement` below for details.
  final RuleGroupRuleStatementAsnMatchStatement? asnMatchStatement;
  /// A rule statement that defines a string match search for AWS WAF to apply to web requests. See Byte Match Statement below for details.
  final RuleGroupRuleStatementByteMatchStatement? byteMatchStatement;
  /// A rule statement used to identify web requests based on country of origin. See GEO Match Statement below for details.
  final RuleGroupRuleStatementGeoMatchStatement? geoMatchStatement;
  /// A rule statement used to detect web requests coming from particular IP addresses or address ranges. See IP Set Reference Statement below for details.
  final RuleGroupRuleStatementIpSetReferenceStatement? ipSetReferenceStatement;
  /// A rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. See Label Match Statement below for details.
  final RuleGroupRuleStatementLabelMatchStatement? labelMatchStatement;
  /// A logical rule statement used to negate the results of another rule statement. See NOT Statement below for details.
  final RuleGroupRuleStatementNotStatement? notStatement;
  /// A logical rule statement used to combine other rule statements with OR logic. See OR Statement below for details.
  final RuleGroupRuleStatementOrStatement? orStatement;
  /// A rate-based rule tracks the rate of requests for each originating `IP address`, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any `5-minute` time span. This statement can not be nested. See Rate Based Statement below for details.
  final RuleGroupRuleStatementRateBasedStatement? rateBasedStatement;
  /// A rule statement used to search web request components for a match against a single regular expression. See Regex Match Statement below for details.
  final RuleGroupRuleStatementRegexMatchStatement? regexMatchStatement;
  /// A rule statement used to search web request components for matches with regular expressions. See Regex Pattern Set Reference Statement below for details.
  final RuleGroupRuleStatementRegexPatternSetReferenceStatement? regexPatternSetReferenceStatement;
  /// A rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). See Size Constraint Statement below for more details.
  final RuleGroupRuleStatementSizeConstraintStatement? sizeConstraintStatement;
  /// An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. See SQL Injection Match Statement below for details.
  final RuleGroupRuleStatementSqliMatchStatement? sqliMatchStatement;
  /// A rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. See XSS Match Statement below for details.
  final RuleGroupRuleStatementXssMatchStatement? xssMatchStatement;

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
      'andStatement': ?andStatement == null ? null : andStatement!.toMap(),
      'asnMatchStatement': ?asnMatchStatement == null ? null : asnMatchStatement!.toMap(),
      'byteMatchStatement': ?byteMatchStatement == null ? null : byteMatchStatement!.toMap(),
      'geoMatchStatement': ?geoMatchStatement == null ? null : geoMatchStatement!.toMap(),
      'ipSetReferenceStatement': ?ipSetReferenceStatement == null ? null : ipSetReferenceStatement!.toMap(),
      'labelMatchStatement': ?labelMatchStatement == null ? null : labelMatchStatement!.toMap(),
      'notStatement': ?notStatement == null ? null : notStatement!.toMap(),
      'orStatement': ?orStatement == null ? null : orStatement!.toMap(),
      'rateBasedStatement': ?rateBasedStatement == null ? null : rateBasedStatement!.toMap(),
      'regexMatchStatement': ?regexMatchStatement == null ? null : regexMatchStatement!.toMap(),
      'regexPatternSetReferenceStatement': ?regexPatternSetReferenceStatement == null ? null : regexPatternSetReferenceStatement!.toMap(),
      'sizeConstraintStatement': ?sizeConstraintStatement == null ? null : sizeConstraintStatement!.toMap(),
      'sqliMatchStatement': ?sqliMatchStatement == null ? null : sqliMatchStatement!.toMap(),
      'xssMatchStatement': ?xssMatchStatement == null ? null : xssMatchStatement!.toMap(),
    };
  }

  factory RuleGroupRuleStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatement(
      andStatement: map['andStatement'] == null ? null : RuleGroupRuleStatementAndStatement.fromMap((map['andStatement'] as Map).cast<String, dynamic>()),
      asnMatchStatement: map['asnMatchStatement'] == null ? null : RuleGroupRuleStatementAsnMatchStatement.fromMap((map['asnMatchStatement'] as Map).cast<String, dynamic>()),
      byteMatchStatement: map['byteMatchStatement'] == null ? null : RuleGroupRuleStatementByteMatchStatement.fromMap((map['byteMatchStatement'] as Map).cast<String, dynamic>()),
      geoMatchStatement: map['geoMatchStatement'] == null ? null : RuleGroupRuleStatementGeoMatchStatement.fromMap((map['geoMatchStatement'] as Map).cast<String, dynamic>()),
      ipSetReferenceStatement: map['ipSetReferenceStatement'] == null ? null : RuleGroupRuleStatementIpSetReferenceStatement.fromMap((map['ipSetReferenceStatement'] as Map).cast<String, dynamic>()),
      labelMatchStatement: map['labelMatchStatement'] == null ? null : RuleGroupRuleStatementLabelMatchStatement.fromMap((map['labelMatchStatement'] as Map).cast<String, dynamic>()),
      notStatement: map['notStatement'] == null ? null : RuleGroupRuleStatementNotStatement.fromMap((map['notStatement'] as Map).cast<String, dynamic>()),
      orStatement: map['orStatement'] == null ? null : RuleGroupRuleStatementOrStatement.fromMap((map['orStatement'] as Map).cast<String, dynamic>()),
      rateBasedStatement: map['rateBasedStatement'] == null ? null : RuleGroupRuleStatementRateBasedStatement.fromMap((map['rateBasedStatement'] as Map).cast<String, dynamic>()),
      regexMatchStatement: map['regexMatchStatement'] == null ? null : RuleGroupRuleStatementRegexMatchStatement.fromMap((map['regexMatchStatement'] as Map).cast<String, dynamic>()),
      regexPatternSetReferenceStatement: map['regexPatternSetReferenceStatement'] == null ? null : RuleGroupRuleStatementRegexPatternSetReferenceStatement.fromMap((map['regexPatternSetReferenceStatement'] as Map).cast<String, dynamic>()),
      sizeConstraintStatement: map['sizeConstraintStatement'] == null ? null : RuleGroupRuleStatementSizeConstraintStatement.fromMap((map['sizeConstraintStatement'] as Map).cast<String, dynamic>()),
      sqliMatchStatement: map['sqliMatchStatement'] == null ? null : RuleGroupRuleStatementSqliMatchStatement.fromMap((map['sqliMatchStatement'] as Map).cast<String, dynamic>()),
      xssMatchStatement: map['xssMatchStatement'] == null ? null : RuleGroupRuleStatementXssMatchStatement.fromMap((map['xssMatchStatement'] as Map).cast<String, dynamic>()),
    );
  }
}


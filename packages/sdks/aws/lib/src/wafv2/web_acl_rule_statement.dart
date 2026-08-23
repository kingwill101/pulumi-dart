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
  /// Logical AND statement that combines multiple statements. See And Statement below.
  final pulumi.Input<WebAclRuleStatementAndStatement>? andStatement;
  /// Match requests based on Autonomous System Number (ASN). See ASN Match Statement below.
  final pulumi.Input<WebAclRuleStatementAsnMatchStatement>? asnMatchStatement;
  /// Match requests based on byte patterns. See Byte Match Statement below.
  final pulumi.Input<WebAclRuleStatementByteMatchStatement>? byteMatchStatement;
  /// Match requests by geographic location. See Geo Match Statement below.
  final pulumi.Input<WebAclRuleStatementGeoMatchStatement>? geoMatchStatement;
  /// Reference to an IP set. See IP Set Reference Statement below.
  final pulumi.Input<WebAclRuleStatementIpSetReferenceStatement>? ipSetReferenceStatement;
  /// Match requests based on labels. See Label Match Statement below.
  final pulumi.Input<WebAclRuleStatementLabelMatchStatement>? labelMatchStatement;
  /// Reference to a managed rule group. See Managed Rule Group Statement below.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatement>? managedRuleGroupStatement;
  /// Logical NOT statement that negates a single statement. See Not Statement below.
  final pulumi.Input<WebAclRuleStatementNotStatement>? notStatement;
  /// Logical OR statement that combines multiple statements. See Or Statement below.
  final pulumi.Input<WebAclRuleStatementOrStatement>? orStatement;
  /// Rate-based rule to track request rates. See Rate Based Statement below.
  final pulumi.Input<WebAclRuleStatementRateBasedStatement>? rateBasedStatement;
  /// Match requests using regex patterns. See Regex Match Statement below.
  final pulumi.Input<WebAclRuleStatementRegexMatchStatement>? regexMatchStatement;
  /// Reference to a regex pattern set. See Regex Pattern Set Reference Statement below.
  final pulumi.Input<WebAclRuleStatementRegexPatternSetReferenceStatement>? regexPatternSetReferenceStatement;
  /// Reference to a rule group. See Rule Group Reference Statement below.
  final pulumi.Input<WebAclRuleStatementRuleGroupReferenceStatement>? ruleGroupReferenceStatement;
  /// Match requests based on size constraints. See Size Constraint Statement below.
  final pulumi.Input<WebAclRuleStatementSizeConstraintStatement>? sizeConstraintStatement;
  /// Match requests that appear to contain SQL injection attacks. See SQL Injection Match Statement below.
  final pulumi.Input<WebAclRuleStatementSqliMatchStatement>? sqliMatchStatement;
  /// Match requests that appear to contain cross-site scripting attacks. See Cross-Site Scripting Match Statement below.
  ///
  /// &gt; **NOTE:** Logical statements (`andStatement`, `notStatement`, `orStatement`) can be nested up to 3 levels deep. This matches the nesting limit of the `aws.wafv2.WebAcl` resource.
  final pulumi.Input<WebAclRuleStatementXssMatchStatement>? xssMatchStatement;

  /// Creates a new [WebAclRuleStatement].
  /// [andStatement] Logical AND statement that combines multiple statements. See And Statement below.
  /// [asnMatchStatement] Match requests based on Autonomous System Number (ASN). See ASN Match Statement below.
  /// [byteMatchStatement] Match requests based on byte patterns. See Byte Match Statement below.
  /// [geoMatchStatement] Match requests by geographic location. See Geo Match Statement below.
  /// [ipSetReferenceStatement] Reference to an IP set. See IP Set Reference Statement below.
  /// [labelMatchStatement] Match requests based on labels. See Label Match Statement below.
  /// [managedRuleGroupStatement] Reference to a managed rule group. See Managed Rule Group Statement below.
  /// [notStatement] Logical NOT statement that negates a single statement. See Not Statement below.
  /// [orStatement] Logical OR statement that combines multiple statements. See Or Statement below.
  /// [rateBasedStatement] Rate-based rule to track request rates. See Rate Based Statement below.
  /// [regexMatchStatement] Match requests using regex patterns. See Regex Match Statement below.
  /// [regexPatternSetReferenceStatement] Reference to a regex pattern set. See Regex Pattern Set Reference Statement below.
  /// [ruleGroupReferenceStatement] Reference to a rule group. See Rule Group Reference Statement below.
  /// [sizeConstraintStatement] Match requests based on size constraints. See Size Constraint Statement below.
  /// [sqliMatchStatement] Match requests that appear to contain SQL injection attacks. See SQL Injection Match Statement below.
  /// [xssMatchStatement] Match requests that appear to contain cross-site scripting attacks. See Cross-Site Scripting Match Statement below.
  const WebAclRuleStatement({
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
      andStatement: (() { final guardedValue = map['andStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementAndStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      asnMatchStatement: (() { final guardedValue = map['asnMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementAsnMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      byteMatchStatement: (() { final guardedValue = map['byteMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementByteMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      geoMatchStatement: (() { final guardedValue = map['geoMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementGeoMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipSetReferenceStatement: (() { final guardedValue = map['ipSetReferenceStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementIpSetReferenceStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labelMatchStatement: (() { final guardedValue = map['labelMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementLabelMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedRuleGroupStatement: (() { final guardedValue = map['managedRuleGroupStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notStatement: (() { final guardedValue = map['notStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementNotStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      orStatement: (() { final guardedValue = map['orStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementOrStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rateBasedStatement: (() { final guardedValue = map['rateBasedStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regexMatchStatement: (() { final guardedValue = map['regexMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRegexMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regexPatternSetReferenceStatement: (() { final guardedValue = map['regexPatternSetReferenceStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRegexPatternSetReferenceStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ruleGroupReferenceStatement: (() { final guardedValue = map['ruleGroupReferenceStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRuleGroupReferenceStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sizeConstraintStatement: (() { final guardedValue = map['sizeConstraintStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementSizeConstraintStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqliMatchStatement: (() { final guardedValue = map['sqliMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementSqliMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      xssMatchStatement: (() { final guardedValue = map['xssMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementXssMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

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
  /// Logical AND statement that combines multiple statements. See And Statement above.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementAndStatement?>? andStatement;
  /// Match requests based on Autonomous System Number (ASN). See ASN Match Statement above.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatement?>? asnMatchStatement;
  /// Match requests based on byte patterns. See Byte Match Statement above.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatement?>? byteMatchStatement;
  /// Match requests by geographic location. See Geo Match Statement above.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementGeoMatchStatement?>? geoMatchStatement;
  /// Reference to an IP set. See IP Set Reference Statement above.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementIpSetReferenceStatement?>? ipSetReferenceStatement;
  /// Match requests based on labels. See Label Match Statement above.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementLabelMatchStatement?>? labelMatchStatement;
  /// Logical NOT statement that negates a single statement. See Not Statement above.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementNotStatement?>? notStatement;
  /// Logical OR statement that combines multiple statements. See Or Statement above.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementOrStatement?>? orStatement;
  /// Match requests using regex patterns. See Regex Match Statement above.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatement?>? regexMatchStatement;
  /// Rule statement used to search web request components for matches with regular expressions from a RegexPatternSet.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatement?>? regexPatternSetReferenceStatement;
  /// Match requests based on size constraints. See Size Constraint Statement above.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatement?>? sizeConstraintStatement;
  /// Match requests that appear to contain SQL injection attacks.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatement?>? sqliMatchStatement;
  /// Match requests that appear to contain cross-site scripting attacks.
  ///
  /// &gt; **NOTE:** Logical statements (`andStatement`, `notStatement`, `orStatement`) within a scope down statement wrap the leaf statement types listed above.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatement?>? xssMatchStatement;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatement].
  /// [andStatement] Logical AND statement that combines multiple statements. See And Statement above.
  /// [asnMatchStatement] Match requests based on Autonomous System Number (ASN). See ASN Match Statement above.
  /// [byteMatchStatement] Match requests based on byte patterns. See Byte Match Statement above.
  /// [geoMatchStatement] Match requests by geographic location. See Geo Match Statement above.
  /// [ipSetReferenceStatement] Reference to an IP set. See IP Set Reference Statement above.
  /// [labelMatchStatement] Match requests based on labels. See Label Match Statement above.
  /// [notStatement] Logical NOT statement that negates a single statement. See Not Statement above.
  /// [orStatement] Logical OR statement that combines multiple statements. See Or Statement above.
  /// [regexMatchStatement] Match requests using regex patterns. See Regex Match Statement above.
  /// [regexPatternSetReferenceStatement] Rule statement used to search web request components for matches with regular expressions from a RegexPatternSet.
  /// [sizeConstraintStatement] Match requests based on size constraints. See Size Constraint Statement above.
  /// [sqliMatchStatement] Match requests that appear to contain SQL injection attacks.
  /// [xssMatchStatement] Match requests that appear to contain cross-site scripting attacks.
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

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_and_statement.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_asn_match_statement.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_byte_match_statement.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_geo_match_statement.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_ip_set_reference_statement.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_label_match_statement.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_not_statement.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_or_statement.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_match_statement.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_size_constraint_statement.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_sqli_match_statement.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_xss_match_statement.dart';

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement {
  /// Logical AND statement that combines multiple statements. See And Statement above.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAndStatement>? andStatement;
  /// Match requests based on Autonomous System Number (ASN). See ASN Match Statement above.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAsnMatchStatement>? asnMatchStatement;
  /// Match requests based on byte patterns. See Byte Match Statement above.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatement>? byteMatchStatement;
  /// Match requests by geographic location. See Geo Match Statement above.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementGeoMatchStatement>? geoMatchStatement;
  /// Reference to an IP set. See IP Set Reference Statement above.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement>? ipSetReferenceStatement;
  /// Match requests based on labels. See Label Match Statement above.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementLabelMatchStatement>? labelMatchStatement;
  /// Logical NOT statement that negates a single statement. See Not Statement above.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement>? notStatement;
  /// Logical OR statement that combines multiple statements. See Or Statement above.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementOrStatement>? orStatement;
  /// Match requests using regex patterns. See Regex Match Statement above.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatement>? regexMatchStatement;
  /// Rule statement used to search web request components for matches with regular expressions from a RegexPatternSet.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatement>? regexPatternSetReferenceStatement;
  /// Match requests based on size constraints. See Size Constraint Statement above.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatement>? sizeConstraintStatement;
  /// Match requests that appear to contain SQL injection attacks.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatement>? sqliMatchStatement;
  /// Match requests that appear to contain cross-site scripting attacks.
  ///
  /// &gt; **NOTE:** Logical statements (`andStatement`, `notStatement`, `orStatement`) within a scope down statement wrap the leaf statement types listed above.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatement>? xssMatchStatement;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement].
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
  const WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement({
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
      'andStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAndStatement, Map<String, dynamic>>(andStatement, (value) => value.toMap()),
      'asnMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAsnMatchStatement, Map<String, dynamic>>(asnMatchStatement, (value) => value.toMap()),
      'byteMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatement, Map<String, dynamic>>(byteMatchStatement, (value) => value.toMap()),
      'geoMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementGeoMatchStatement, Map<String, dynamic>>(geoMatchStatement, (value) => value.toMap()),
      'ipSetReferenceStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement, Map<String, dynamic>>(ipSetReferenceStatement, (value) => value.toMap()),
      'labelMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementLabelMatchStatement, Map<String, dynamic>>(labelMatchStatement, (value) => value.toMap()),
      'notStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement, Map<String, dynamic>>(notStatement, (value) => value.toMap()),
      'orStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementOrStatement, Map<String, dynamic>>(orStatement, (value) => value.toMap()),
      'regexMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatement, Map<String, dynamic>>(regexMatchStatement, (value) => value.toMap()),
      'regexPatternSetReferenceStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatement, Map<String, dynamic>>(regexPatternSetReferenceStatement, (value) => value.toMap()),
      'sizeConstraintStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatement, Map<String, dynamic>>(sizeConstraintStatement, (value) => value.toMap()),
      'sqliMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatement, Map<String, dynamic>>(sqliMatchStatement, (value) => value.toMap()),
      'xssMatchStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatement, Map<String, dynamic>>(xssMatchStatement, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement(
      andStatement: (() { final guardedValue = map['andStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAndStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      asnMatchStatement: (() { final guardedValue = map['asnMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAsnMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      byteMatchStatement: (() { final guardedValue = map['byteMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      geoMatchStatement: (() { final guardedValue = map['geoMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementGeoMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipSetReferenceStatement: (() { final guardedValue = map['ipSetReferenceStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labelMatchStatement: (() { final guardedValue = map['labelMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementLabelMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notStatement: (() { final guardedValue = map['notStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      orStatement: (() { final guardedValue = map['orStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementOrStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regexMatchStatement: (() { final guardedValue = map['regexMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regexPatternSetReferenceStatement: (() { final guardedValue = map['regexPatternSetReferenceStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sizeConstraintStatement: (() { final guardedValue = map['sizeConstraintStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqliMatchStatement: (() { final guardedValue = map['sqliMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      xssMatchStatement: (() { final guardedValue = map['xssMatchStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

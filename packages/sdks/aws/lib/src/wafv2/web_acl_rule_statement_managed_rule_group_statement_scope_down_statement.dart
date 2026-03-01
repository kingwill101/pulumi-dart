// ignore_for_file: unused_element, unnecessary_cast

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
  /// Logical rule statement used to combine other rule statements with AND logic. See `and_statement` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAndStatement? andStatement;
  /// Rule statement that inspects web traffic based on the Autonomous System Number (ASN) associated with the request's IP address. See `asn_match_statement` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAsnMatchStatement? asnMatchStatement;
  /// Rule statement that defines a string match search for AWS WAF to apply to web requests. See `byte_match_statement` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatement? byteMatchStatement;
  /// Rule statement used to identify web requests based on country of origin. See `geo_match_statement` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementGeoMatchStatement? geoMatchStatement;
  /// Rule statement used to detect web requests coming from particular IP addresses or address ranges. See `ip_set_reference_statement` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement? ipSetReferenceStatement;
  /// Rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. See `label_match_statement` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementLabelMatchStatement? labelMatchStatement;
  /// Logical rule statement used to negate the results of another rule statement. See `not_statement` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement? notStatement;
  /// Logical rule statement used to combine other rule statements with OR logic. See `or_statement` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementOrStatement? orStatement;
  /// Rule statement used to search web request components for a match against a single regular expression. See `regex_match_statement` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatement? regexMatchStatement;
  /// Rule statement used to search web request components for matches with regular expressions. See `regex_pattern_set_reference_statement` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatement? regexPatternSetReferenceStatement;
  /// Rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). See `size_constraint_statement` below for more details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatement? sizeConstraintStatement;
  /// An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. See `sqli_match_statement` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatement? sqliMatchStatement;
  /// Rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. See `xss_match_statement` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatement? xssMatchStatement;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement].
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
  /// [sizeConstraintStatement] Rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). See `size_constraint_statement` below for more details.
  /// [sqliMatchStatement] An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. See `sqli_match_statement` below for details.
  /// [xssMatchStatement] Rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. See `xss_match_statement` below for details.
  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement({
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
      'andStatement': ?andStatement == null ? null : andStatement!.toMap(),
      'asnMatchStatement': ?asnMatchStatement == null ? null : asnMatchStatement!.toMap(),
      'byteMatchStatement': ?byteMatchStatement == null ? null : byteMatchStatement!.toMap(),
      'geoMatchStatement': ?geoMatchStatement == null ? null : geoMatchStatement!.toMap(),
      'ipSetReferenceStatement': ?ipSetReferenceStatement == null ? null : ipSetReferenceStatement!.toMap(),
      'labelMatchStatement': ?labelMatchStatement == null ? null : labelMatchStatement!.toMap(),
      'notStatement': ?notStatement == null ? null : notStatement!.toMap(),
      'orStatement': ?orStatement == null ? null : orStatement!.toMap(),
      'regexMatchStatement': ?regexMatchStatement == null ? null : regexMatchStatement!.toMap(),
      'regexPatternSetReferenceStatement': ?regexPatternSetReferenceStatement == null ? null : regexPatternSetReferenceStatement!.toMap(),
      'sizeConstraintStatement': ?sizeConstraintStatement == null ? null : sizeConstraintStatement!.toMap(),
      'sqliMatchStatement': ?sqliMatchStatement == null ? null : sqliMatchStatement!.toMap(),
      'xssMatchStatement': ?xssMatchStatement == null ? null : xssMatchStatement!.toMap(),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement(
      andStatement: map['andStatement'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAndStatement.fromMap((map['andStatement'] as Map).cast<String, dynamic>()),
      asnMatchStatement: map['asnMatchStatement'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAsnMatchStatement.fromMap((map['asnMatchStatement'] as Map).cast<String, dynamic>()),
      byteMatchStatement: map['byteMatchStatement'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatement.fromMap((map['byteMatchStatement'] as Map).cast<String, dynamic>()),
      geoMatchStatement: map['geoMatchStatement'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementGeoMatchStatement.fromMap((map['geoMatchStatement'] as Map).cast<String, dynamic>()),
      ipSetReferenceStatement: map['ipSetReferenceStatement'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement.fromMap((map['ipSetReferenceStatement'] as Map).cast<String, dynamic>()),
      labelMatchStatement: map['labelMatchStatement'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementLabelMatchStatement.fromMap((map['labelMatchStatement'] as Map).cast<String, dynamic>()),
      notStatement: map['notStatement'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement.fromMap((map['notStatement'] as Map).cast<String, dynamic>()),
      orStatement: map['orStatement'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementOrStatement.fromMap((map['orStatement'] as Map).cast<String, dynamic>()),
      regexMatchStatement: map['regexMatchStatement'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatement.fromMap((map['regexMatchStatement'] as Map).cast<String, dynamic>()),
      regexPatternSetReferenceStatement: map['regexPatternSetReferenceStatement'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatement.fromMap((map['regexPatternSetReferenceStatement'] as Map).cast<String, dynamic>()),
      sizeConstraintStatement: map['sizeConstraintStatement'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatement.fromMap((map['sizeConstraintStatement'] as Map).cast<String, dynamic>()),
      sqliMatchStatement: map['sqliMatchStatement'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatement.fromMap((map['sqliMatchStatement'] as Map).cast<String, dynamic>()),
      xssMatchStatement: map['xssMatchStatement'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatement.fromMap((map['xssMatchStatement'] as Map).cast<String, dynamic>()),
    );
  }
}


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
  /// Logical rule statement used to combine other rule statements with AND logic. See `and_statement` below for details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAndStatement>? andStatement;
  /// Rule statement that inspects web traffic based on the Autonomous System Number (ASN) associated with the request's IP address. See `asn_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAsnMatchStatement>? asnMatchStatement;
  /// Rule statement that defines a string match search for AWS WAF to apply to web requests. See `byte_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatement>? byteMatchStatement;
  /// Rule statement used to identify web requests based on country of origin. See `geo_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementGeoMatchStatement>? geoMatchStatement;
  /// Rule statement used to detect web requests coming from particular IP addresses or address ranges. See `ip_set_reference_statement` below for details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement>? ipSetReferenceStatement;
  /// Rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. See `label_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementLabelMatchStatement>? labelMatchStatement;
  /// Logical rule statement used to negate the results of another rule statement. See `not_statement` below for details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement>? notStatement;
  /// Logical rule statement used to combine other rule statements with OR logic. See `or_statement` below for details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementOrStatement>? orStatement;
  /// Rule statement used to search web request components for a match against a single regular expression. See `regex_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatement>? regexMatchStatement;
  /// Rule statement used to search web request components for matches with regular expressions. See `regex_pattern_set_reference_statement` below for details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatement>? regexPatternSetReferenceStatement;
  /// Rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). See `size_constraint_statement` below for more details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatement>? sizeConstraintStatement;
  /// An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. See `sqli_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatement>? sqliMatchStatement;
  /// Rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. See `xss_match_statement` below for details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatement>? xssMatchStatement;

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
      andStatement: map['andStatement'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAndStatement.fromMap((map['andStatement']! as Map).cast<String, dynamic>())).input()).input(),
      asnMatchStatement: map['asnMatchStatement'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAsnMatchStatement.fromMap((map['asnMatchStatement']! as Map).cast<String, dynamic>())).input()).input(),
      byteMatchStatement: map['byteMatchStatement'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatement.fromMap((map['byteMatchStatement']! as Map).cast<String, dynamic>())).input()).input(),
      geoMatchStatement: map['geoMatchStatement'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementGeoMatchStatement.fromMap((map['geoMatchStatement']! as Map).cast<String, dynamic>())).input()).input(),
      ipSetReferenceStatement: map['ipSetReferenceStatement'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement.fromMap((map['ipSetReferenceStatement']! as Map).cast<String, dynamic>())).input()).input(),
      labelMatchStatement: map['labelMatchStatement'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementLabelMatchStatement.fromMap((map['labelMatchStatement']! as Map).cast<String, dynamic>())).input()).input(),
      notStatement: map['notStatement'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement.fromMap((map['notStatement']! as Map).cast<String, dynamic>())).input()).input(),
      orStatement: map['orStatement'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementOrStatement.fromMap((map['orStatement']! as Map).cast<String, dynamic>())).input()).input(),
      regexMatchStatement: map['regexMatchStatement'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatement.fromMap((map['regexMatchStatement']! as Map).cast<String, dynamic>())).input()).input(),
      regexPatternSetReferenceStatement: map['regexPatternSetReferenceStatement'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatement.fromMap((map['regexPatternSetReferenceStatement']! as Map).cast<String, dynamic>())).input()).input(),
      sizeConstraintStatement: map['sizeConstraintStatement'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatement.fromMap((map['sizeConstraintStatement']! as Map).cast<String, dynamic>())).input()).input(),
      sqliMatchStatement: map['sqliMatchStatement'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatement.fromMap((map['sqliMatchStatement']! as Map).cast<String, dynamic>())).input()).input(),
      xssMatchStatement: map['xssMatchStatement'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatement.fromMap((map['xssMatchStatement']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


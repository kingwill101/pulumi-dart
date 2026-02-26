// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_and_statement/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_and_statement.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_asn_match_statement/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_asn_match_statement.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_byte_match_statement/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_byte_match_statement.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_geo_match_statement/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_geo_match_statement.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_ip_set_reference_statement/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_ip_set_reference_statement.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_label_match_statement/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_label_match_statement.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_not_statement/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_not_statement.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_or_statement/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_or_statement.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_match_statement/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_match_statement.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_regex_pattern_set_reference_statement.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_size_constraint_statement/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_size_constraint_statement.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_sqli_match_statement/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_sqli_match_statement.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_xss_match_statement/web_acl_rule_statement_managed_rule_group_statement_scope_down_statement_xss_match_statement.dart';

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement {
  /// Logical rule statement used to combine other rule statements with AND logic. See <span pulumi-lang-nodejs="`andStatement`" pulumi-lang-dotnet="`AndStatement`" pulumi-lang-go="`andStatement`" pulumi-lang-python="`and_statement`" pulumi-lang-yaml="`andStatement`" pulumi-lang-java="`andStatement`">`and_statement`</span> below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAndStatement?
      andStatement;

  /// Rule statement that inspects web traffic based on the Autonomous System Number (ASN) associated with the request's IP address. See <span pulumi-lang-nodejs="`asnMatchStatement`" pulumi-lang-dotnet="`AsnMatchStatement`" pulumi-lang-go="`asnMatchStatement`" pulumi-lang-python="`asn_match_statement`" pulumi-lang-yaml="`asnMatchStatement`" pulumi-lang-java="`asnMatchStatement`">`asn_match_statement`</span> below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAsnMatchStatement?
      asnMatchStatement;

  /// Rule statement that defines a string match search for AWS WAF to apply to web requests. See <span pulumi-lang-nodejs="`byteMatchStatement`" pulumi-lang-dotnet="`ByteMatchStatement`" pulumi-lang-go="`byteMatchStatement`" pulumi-lang-python="`byte_match_statement`" pulumi-lang-yaml="`byteMatchStatement`" pulumi-lang-java="`byteMatchStatement`">`byte_match_statement`</span> below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatement?
      byteMatchStatement;

  /// Rule statement used to identify web requests based on country of origin. See <span pulumi-lang-nodejs="`geoMatchStatement`" pulumi-lang-dotnet="`GeoMatchStatement`" pulumi-lang-go="`geoMatchStatement`" pulumi-lang-python="`geo_match_statement`" pulumi-lang-yaml="`geoMatchStatement`" pulumi-lang-java="`geoMatchStatement`">`geo_match_statement`</span> below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementGeoMatchStatement?
      geoMatchStatement;

  /// Rule statement used to detect web requests coming from particular IP addresses or address ranges. See <span pulumi-lang-nodejs="`ipSetReferenceStatement`" pulumi-lang-dotnet="`IpSetReferenceStatement`" pulumi-lang-go="`ipSetReferenceStatement`" pulumi-lang-python="`ip_set_reference_statement`" pulumi-lang-yaml="`ipSetReferenceStatement`" pulumi-lang-java="`ipSetReferenceStatement`">`ip_set_reference_statement`</span> below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement?
      ipSetReferenceStatement;

  /// Rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. See <span pulumi-lang-nodejs="`labelMatchStatement`" pulumi-lang-dotnet="`LabelMatchStatement`" pulumi-lang-go="`labelMatchStatement`" pulumi-lang-python="`label_match_statement`" pulumi-lang-yaml="`labelMatchStatement`" pulumi-lang-java="`labelMatchStatement`">`label_match_statement`</span> below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementLabelMatchStatement?
      labelMatchStatement;

  /// Logical rule statement used to negate the results of another rule statement. See <span pulumi-lang-nodejs="`notStatement`" pulumi-lang-dotnet="`NotStatement`" pulumi-lang-go="`notStatement`" pulumi-lang-python="`not_statement`" pulumi-lang-yaml="`notStatement`" pulumi-lang-java="`notStatement`">`not_statement`</span> below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement?
      notStatement;

  /// Logical rule statement used to combine other rule statements with OR logic. See <span pulumi-lang-nodejs="`orStatement`" pulumi-lang-dotnet="`OrStatement`" pulumi-lang-go="`orStatement`" pulumi-lang-python="`or_statement`" pulumi-lang-yaml="`orStatement`" pulumi-lang-java="`orStatement`">`or_statement`</span> below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementOrStatement?
      orStatement;

  /// Rule statement used to search web request components for a match against a single regular expression. See <span pulumi-lang-nodejs="`regexMatchStatement`" pulumi-lang-dotnet="`RegexMatchStatement`" pulumi-lang-go="`regexMatchStatement`" pulumi-lang-python="`regex_match_statement`" pulumi-lang-yaml="`regexMatchStatement`" pulumi-lang-java="`regexMatchStatement`">`regex_match_statement`</span> below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatement?
      regexMatchStatement;

  /// Rule statement used to search web request components for matches with regular expressions. See <span pulumi-lang-nodejs="`regexPatternSetReferenceStatement`" pulumi-lang-dotnet="`RegexPatternSetReferenceStatement`" pulumi-lang-go="`regexPatternSetReferenceStatement`" pulumi-lang-python="`regex_pattern_set_reference_statement`" pulumi-lang-yaml="`regexPatternSetReferenceStatement`" pulumi-lang-java="`regexPatternSetReferenceStatement`">`regex_pattern_set_reference_statement`</span> below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatement?
      regexPatternSetReferenceStatement;

  /// Rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). See <span pulumi-lang-nodejs="`sizeConstraintStatement`" pulumi-lang-dotnet="`SizeConstraintStatement`" pulumi-lang-go="`sizeConstraintStatement`" pulumi-lang-python="`size_constraint_statement`" pulumi-lang-yaml="`sizeConstraintStatement`" pulumi-lang-java="`sizeConstraintStatement`">`size_constraint_statement`</span> below for more details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatement?
      sizeConstraintStatement;

  /// An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. See <span pulumi-lang-nodejs="`sqliMatchStatement`" pulumi-lang-dotnet="`SqliMatchStatement`" pulumi-lang-go="`sqliMatchStatement`" pulumi-lang-python="`sqli_match_statement`" pulumi-lang-yaml="`sqliMatchStatement`" pulumi-lang-java="`sqliMatchStatement`">`sqli_match_statement`</span> below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatement?
      sqliMatchStatement;

  /// Rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. See <span pulumi-lang-nodejs="`xssMatchStatement`" pulumi-lang-dotnet="`XssMatchStatement`" pulumi-lang-go="`xssMatchStatement`" pulumi-lang-python="`xss_match_statement`" pulumi-lang-yaml="`xssMatchStatement`" pulumi-lang-java="`xssMatchStatement`">`xss_match_statement`</span> below for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatement?
      xssMatchStatement;

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
    final notStatementValue = notStatement;
    if (notStatementValue != null) {
      map['notStatement'] = notStatementValue.toMap();
    }
    final orStatementValue = orStatement;
    if (orStatementValue != null) {
      map['orStatement'] = orStatementValue.toMap();
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

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement(
      andStatement: map['andStatement'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAndStatement
              .fromMap((map['andStatement'] as Map).cast<String, dynamic>()),
      asnMatchStatement: map['asnMatchStatement'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAsnMatchStatement
              .fromMap(
                  (map['asnMatchStatement'] as Map).cast<String, dynamic>()),
      byteMatchStatement: map['byteMatchStatement'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatement
              .fromMap(
                  (map['byteMatchStatement'] as Map).cast<String, dynamic>()),
      geoMatchStatement: map['geoMatchStatement'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementGeoMatchStatement
              .fromMap(
                  (map['geoMatchStatement'] as Map).cast<String, dynamic>()),
      ipSetReferenceStatement: map['ipSetReferenceStatement'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatement
              .fromMap((map['ipSetReferenceStatement'] as Map)
                  .cast<String, dynamic>()),
      labelMatchStatement: map['labelMatchStatement'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementLabelMatchStatement
              .fromMap(
                  (map['labelMatchStatement'] as Map).cast<String, dynamic>()),
      notStatement: map['notStatement'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement
              .fromMap((map['notStatement'] as Map).cast<String, dynamic>()),
      orStatement: map['orStatement'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementOrStatement
              .fromMap((map['orStatement'] as Map).cast<String, dynamic>()),
      regexMatchStatement: map['regexMatchStatement'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatement
              .fromMap(
                  (map['regexMatchStatement'] as Map).cast<String, dynamic>()),
      regexPatternSetReferenceStatement: map[
                  'regexPatternSetReferenceStatement'] ==
              null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatement
              .fromMap((map['regexPatternSetReferenceStatement'] as Map)
                  .cast<String, dynamic>()),
      sizeConstraintStatement: map['sizeConstraintStatement'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatement
              .fromMap((map['sizeConstraintStatement'] as Map)
                  .cast<String, dynamic>()),
      sqliMatchStatement: map['sqliMatchStatement'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatement
              .fromMap(
                  (map['sqliMatchStatement'] as Map).cast<String, dynamic>()),
      xssMatchStatement: map['xssMatchStatement'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatement
              .fromMap(
                  (map['xssMatchStatement'] as Map).cast<String, dynamic>()),
    );
  }
}

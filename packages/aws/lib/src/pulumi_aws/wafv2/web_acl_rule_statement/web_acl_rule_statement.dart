// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_statement_and_statement/web_acl_rule_statement_and_statement.dart';
import '../web_acl_rule_statement_asn_match_statement/web_acl_rule_statement_asn_match_statement.dart';
import '../web_acl_rule_statement_byte_match_statement/web_acl_rule_statement_byte_match_statement.dart';
import '../web_acl_rule_statement_geo_match_statement/web_acl_rule_statement_geo_match_statement.dart';
import '../web_acl_rule_statement_ip_set_reference_statement/web_acl_rule_statement_ip_set_reference_statement.dart';
import '../web_acl_rule_statement_label_match_statement/web_acl_rule_statement_label_match_statement.dart';
import '../web_acl_rule_statement_managed_rule_group_statement/web_acl_rule_statement_managed_rule_group_statement.dart';
import '../web_acl_rule_statement_not_statement/web_acl_rule_statement_not_statement.dart';
import '../web_acl_rule_statement_or_statement/web_acl_rule_statement_or_statement.dart';
import '../web_acl_rule_statement_rate_based_statement/web_acl_rule_statement_rate_based_statement.dart';
import '../web_acl_rule_statement_regex_match_statement/web_acl_rule_statement_regex_match_statement.dart';
import '../web_acl_rule_statement_regex_pattern_set_reference_statement/web_acl_rule_statement_regex_pattern_set_reference_statement.dart';
import '../web_acl_rule_statement_rule_group_reference_statement/web_acl_rule_statement_rule_group_reference_statement.dart';
import '../web_acl_rule_statement_size_constraint_statement/web_acl_rule_statement_size_constraint_statement.dart';
import '../web_acl_rule_statement_sqli_match_statement/web_acl_rule_statement_sqli_match_statement.dart';
import '../web_acl_rule_statement_xss_match_statement/web_acl_rule_statement_xss_match_statement.dart';

class WebAclRuleStatement {
  /// Logical rule statement used to combine other rule statements with AND logic. See <span pulumi-lang-nodejs="`andStatement`" pulumi-lang-dotnet="`AndStatement`" pulumi-lang-go="`andStatement`" pulumi-lang-python="`and_statement`" pulumi-lang-yaml="`andStatement`" pulumi-lang-java="`andStatement`">`and_statement`</span> below for details.
  final WebAclRuleStatementAndStatement? andStatement;

  /// Rule statement that inspects web traffic based on the Autonomous System Number (ASN) associated with the request's IP address. See <span pulumi-lang-nodejs="`asnMatchStatement`" pulumi-lang-dotnet="`AsnMatchStatement`" pulumi-lang-go="`asnMatchStatement`" pulumi-lang-python="`asn_match_statement`" pulumi-lang-yaml="`asnMatchStatement`" pulumi-lang-java="`asnMatchStatement`">`asn_match_statement`</span> below for details.
  final WebAclRuleStatementAsnMatchStatement? asnMatchStatement;

  /// Rule statement that defines a string match search for AWS WAF to apply to web requests. See <span pulumi-lang-nodejs="`byteMatchStatement`" pulumi-lang-dotnet="`ByteMatchStatement`" pulumi-lang-go="`byteMatchStatement`" pulumi-lang-python="`byte_match_statement`" pulumi-lang-yaml="`byteMatchStatement`" pulumi-lang-java="`byteMatchStatement`">`byte_match_statement`</span> below for details.
  final WebAclRuleStatementByteMatchStatement? byteMatchStatement;

  /// Rule statement used to identify web requests based on country of origin. See <span pulumi-lang-nodejs="`geoMatchStatement`" pulumi-lang-dotnet="`GeoMatchStatement`" pulumi-lang-go="`geoMatchStatement`" pulumi-lang-python="`geo_match_statement`" pulumi-lang-yaml="`geoMatchStatement`" pulumi-lang-java="`geoMatchStatement`">`geo_match_statement`</span> below for details.
  final WebAclRuleStatementGeoMatchStatement? geoMatchStatement;

  /// Rule statement used to detect web requests coming from particular IP addresses or address ranges. See <span pulumi-lang-nodejs="`ipSetReferenceStatement`" pulumi-lang-dotnet="`IpSetReferenceStatement`" pulumi-lang-go="`ipSetReferenceStatement`" pulumi-lang-python="`ip_set_reference_statement`" pulumi-lang-yaml="`ipSetReferenceStatement`" pulumi-lang-java="`ipSetReferenceStatement`">`ip_set_reference_statement`</span> below for details.
  final WebAclRuleStatementIpSetReferenceStatement? ipSetReferenceStatement;

  /// Rule statement that defines a string match search against labels that have been added to the web request by rules that have already run in the web ACL. See <span pulumi-lang-nodejs="`labelMatchStatement`" pulumi-lang-dotnet="`LabelMatchStatement`" pulumi-lang-go="`labelMatchStatement`" pulumi-lang-python="`label_match_statement`" pulumi-lang-yaml="`labelMatchStatement`" pulumi-lang-java="`labelMatchStatement`">`label_match_statement`</span> below for details.
  final WebAclRuleStatementLabelMatchStatement? labelMatchStatement;

  /// Rule statement used to run the rules that are defined in a managed rule group.  This statement can not be nested. See <span pulumi-lang-nodejs="`managedRuleGroupStatement`" pulumi-lang-dotnet="`ManagedRuleGroupStatement`" pulumi-lang-go="`managedRuleGroupStatement`" pulumi-lang-python="`managed_rule_group_statement`" pulumi-lang-yaml="`managedRuleGroupStatement`" pulumi-lang-java="`managedRuleGroupStatement`">`managed_rule_group_statement`</span> below for details.
  final WebAclRuleStatementManagedRuleGroupStatement? managedRuleGroupStatement;

  /// Logical rule statement used to negate the results of another rule statement. See <span pulumi-lang-nodejs="`notStatement`" pulumi-lang-dotnet="`NotStatement`" pulumi-lang-go="`notStatement`" pulumi-lang-python="`not_statement`" pulumi-lang-yaml="`notStatement`" pulumi-lang-java="`notStatement`">`not_statement`</span> below for details.
  final WebAclRuleStatementNotStatement? notStatement;

  /// Logical rule statement used to combine other rule statements with OR logic. See <span pulumi-lang-nodejs="`orStatement`" pulumi-lang-dotnet="`OrStatement`" pulumi-lang-go="`orStatement`" pulumi-lang-python="`or_statement`" pulumi-lang-yaml="`orStatement`" pulumi-lang-java="`orStatement`">`or_statement`</span> below for details.
  final WebAclRuleStatementOrStatement? orStatement;

  /// Rate-based rule tracks the rate of requests for each originating `IP address`, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any specified time span. This statement can not be nested. See <span pulumi-lang-nodejs="`rateBasedStatement`" pulumi-lang-dotnet="`RateBasedStatement`" pulumi-lang-go="`rateBasedStatement`" pulumi-lang-python="`rate_based_statement`" pulumi-lang-yaml="`rateBasedStatement`" pulumi-lang-java="`rateBasedStatement`">`rate_based_statement`</span> below for details.
  final WebAclRuleStatementRateBasedStatement? rateBasedStatement;

  /// Rule statement used to search web request components for a match against a single regular expression. See <span pulumi-lang-nodejs="`regexMatchStatement`" pulumi-lang-dotnet="`RegexMatchStatement`" pulumi-lang-go="`regexMatchStatement`" pulumi-lang-python="`regex_match_statement`" pulumi-lang-yaml="`regexMatchStatement`" pulumi-lang-java="`regexMatchStatement`">`regex_match_statement`</span> below for details.
  final WebAclRuleStatementRegexMatchStatement? regexMatchStatement;

  /// Rule statement used to search web request components for matches with regular expressions. See <span pulumi-lang-nodejs="`regexPatternSetReferenceStatement`" pulumi-lang-dotnet="`RegexPatternSetReferenceStatement`" pulumi-lang-go="`regexPatternSetReferenceStatement`" pulumi-lang-python="`regex_pattern_set_reference_statement`" pulumi-lang-yaml="`regexPatternSetReferenceStatement`" pulumi-lang-java="`regexPatternSetReferenceStatement`">`regex_pattern_set_reference_statement`</span> below for details.
  final WebAclRuleStatementRegexPatternSetReferenceStatement?
      regexPatternSetReferenceStatement;

  /// Rule statement used to run the rules that are defined in an WAFv2 Rule Group. See <span pulumi-lang-nodejs="`ruleGroupReferenceStatement`" pulumi-lang-dotnet="`RuleGroupReferenceStatement`" pulumi-lang-go="`ruleGroupReferenceStatement`" pulumi-lang-python="`rule_group_reference_statement`" pulumi-lang-yaml="`ruleGroupReferenceStatement`" pulumi-lang-java="`ruleGroupReferenceStatement`">`rule_group_reference_statement`</span> below for details.
  final WebAclRuleStatementRuleGroupReferenceStatement?
      ruleGroupReferenceStatement;

  /// Rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (>) or less than (<). See <span pulumi-lang-nodejs="`sizeConstraintStatement`" pulumi-lang-dotnet="`SizeConstraintStatement`" pulumi-lang-go="`sizeConstraintStatement`" pulumi-lang-python="`size_constraint_statement`" pulumi-lang-yaml="`sizeConstraintStatement`" pulumi-lang-java="`sizeConstraintStatement`">`size_constraint_statement`</span> below for more details.
  final WebAclRuleStatementSizeConstraintStatement? sizeConstraintStatement;

  /// An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. See <span pulumi-lang-nodejs="`sqliMatchStatement`" pulumi-lang-dotnet="`SqliMatchStatement`" pulumi-lang-go="`sqliMatchStatement`" pulumi-lang-python="`sqli_match_statement`" pulumi-lang-yaml="`sqliMatchStatement`" pulumi-lang-java="`sqliMatchStatement`">`sqli_match_statement`</span> below for details.
  final WebAclRuleStatementSqliMatchStatement? sqliMatchStatement;

  /// Rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. See <span pulumi-lang-nodejs="`xssMatchStatement`" pulumi-lang-dotnet="`XssMatchStatement`" pulumi-lang-go="`xssMatchStatement`" pulumi-lang-python="`xss_match_statement`" pulumi-lang-yaml="`xssMatchStatement`" pulumi-lang-java="`xssMatchStatement`">`xss_match_statement`</span> below for details.
  final WebAclRuleStatementXssMatchStatement? xssMatchStatement;

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

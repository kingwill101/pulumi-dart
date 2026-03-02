// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_response_inspection.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSet {
  /// The path of the account creation endpoint for your application. This is the page on your website that accepts the completed registration form for a new user. This page must accept POST requests.
  final pulumi.Input<String> creationPath;
  /// Whether or not to allow the use of regular expressions in the login page path.
  final pulumi.Input<bool>? enableRegexInPath;
  /// The path of the account registration endpoint for your application. This is the page on your website that presents the registration form to new users. This page must accept GET text/html requests.
  final pulumi.Input<String> registrationPagePath;
  /// The criteria for inspecting login requests, used by the ATP rule group to validate credentials usage. See `request_inspection` for more details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspection> requestInspection;
  /// The criteria for inspecting responses to login requests, used by the ATP rule group to track login failure rates. Note that Response Inspection is available only on web ACLs that protect CloudFront distributions. See `response_inspection` for more details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection>? responseInspection;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSet].
  /// [creationPath] The path of the account creation endpoint for your application. This is the page on your website that accepts the completed registration form for a new user. This page must accept POST requests.
  /// [enableRegexInPath] Whether or not to allow the use of regular expressions in the login page path.
  /// [registrationPagePath] The path of the account registration endpoint for your application. This is the page on your website that presents the registration form to new users. This page must accept GET text/html requests.
  /// [requestInspection] The criteria for inspecting login requests, used by the ATP rule group to validate credentials usage. See `request_inspection` for more details.
  /// [responseInspection] The criteria for inspecting responses to login requests, used by the ATP rule group to track login failure rates. Note that Response Inspection is available only on web ACLs that protect CloudFront distributions. See `response_inspection` for more details.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSet({
    required this.creationPath,
    this.enableRegexInPath,
    required this.registrationPagePath,
    required this.requestInspection,
    this.responseInspection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationPath': creationPath,
      'enableRegexInPath': ?enableRegexInPath,
      'registrationPagePath': registrationPagePath,
      'requestInspection': pulumi.Input.mapInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspection, Map<String, dynamic>>(requestInspection, (value) => value.toMap()),
      'responseInspection': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection, Map<String, dynamic>>(responseInspection, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSet.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSet(
      creationPath: (map['creationPath'] as String).input(),
      enableRegexInPath: map['enableRegexInPath'] == null ? null : ((map['enableRegexInPath'] as bool).input()).input(),
      registrationPagePath: (map['registrationPagePath'] as String).input(),
      requestInspection: (WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspection.fromMap((map['requestInspection']! as Map).cast<String, dynamic>())).input(),
      responseInspection: map['responseInspection'] == null ? null : ((WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection.fromMap((map['responseInspection']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


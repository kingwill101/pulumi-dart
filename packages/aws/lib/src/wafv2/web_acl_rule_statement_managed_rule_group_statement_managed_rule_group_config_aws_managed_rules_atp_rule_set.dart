// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_request_inspection.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_response_inspection.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSet {
  /// Whether or not to allow the use of regular expressions in the login page path.
  final bool? enableRegexInPath;

  /// The path of the login endpoint for your application.
  final String loginPath;

  /// The criteria for inspecting login requests, used by the ATP rule group to validate credentials usage. See `request_inspection` for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspection?
  requestInspection;

  /// The criteria for inspecting responses to login requests, used by the ATP rule group to track login failure rates. Note that Response Inspection is available only on web ACLs that protect CloudFront distributions. See `response_inspection` for more details.
  final WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspection?
  responseInspection;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSet].
  /// [enableRegexInPath] Whether or not to allow the use of regular expressions in the login page path.
  /// [loginPath] The path of the login endpoint for your application.
  /// [requestInspection] The criteria for inspecting login requests, used by the ATP rule group to validate credentials usage. See `request_inspection` for more details.
  /// [responseInspection] The criteria for inspecting responses to login requests, used by the ATP rule group to track login failure rates. Note that Response Inspection is available only on web ACLs that protect CloudFront distributions. See `response_inspection` for more details.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSet({
    this.enableRegexInPath,
    required this.loginPath,
    this.requestInspection,
    this.responseInspection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableRegexInPath': ?enableRegexInPath,
      'loginPath': loginPath,
      'requestInspection': ?requestInspection == null
          ? null
          : requestInspection!.toMap(),
      'responseInspection': ?responseInspection == null
          ? null
          : responseInspection!.toMap(),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSet.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSet(
      enableRegexInPath: map['enableRegexInPath'] == null
          ? null
          : map['enableRegexInPath'] as bool,
      loginPath: map['loginPath'] as String,
      requestInspection: map['requestInspection'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspection.fromMap(
              (map['requestInspection'] as Map).cast<String, dynamic>(),
            ),
      responseInspection: map['responseInspection'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspection.fromMap(
              (map['responseInspection'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

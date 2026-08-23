// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_acfp_rule_set_request_inspection.dart';
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_acfp_rule_set_response_inspection.dart';

class WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSet {
  /// Path of the account creation endpoint for your application. This is the page on your website that accepts the completed registration form for a new user. This page must accept POST requests.
  final pulumi.Input<String> creationPath;
  /// Whether or not to allow the use of regular expressions in the login page path.
  final pulumi.Input<bool>? enableRegexInPath;
  /// Path of the account registration endpoint for your application. This is the page on your website that presents the registration form to new users. This page must accept GET text/html requests.
  final pulumi.Input<String> registrationPagePath;
  /// Criteria for inspecting login requests, used by the ATP rule group to validate credentials usage. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspection>? requestInspection;
  /// Criteria for inspecting responses to login requests, used by the ATP rule group to track login failure rates. Note that Response Inspection is available only on web ACLs that protect CloudFront distributions. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspection>? responseInspection;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSet].
  /// [creationPath] Path of the account creation endpoint for your application. This is the page on your website that accepts the completed registration form for a new user. This page must accept POST requests.
  /// [enableRegexInPath] Whether or not to allow the use of regular expressions in the login page path.
  /// [registrationPagePath] Path of the account registration endpoint for your application. This is the page on your website that presents the registration form to new users. This page must accept GET text/html requests.
  /// [requestInspection] Criteria for inspecting login requests, used by the ATP rule group to validate credentials usage. See below.
  /// [responseInspection] Criteria for inspecting responses to login requests, used by the ATP rule group to track login failure rates. Note that Response Inspection is available only on web ACLs that protect CloudFront distributions. See below.
  const WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSet({
    required this.creationPath,
    this.enableRegexInPath,
    required this.registrationPagePath,
    this.requestInspection,
    this.responseInspection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationPath': creationPath,
      'enableRegexInPath': ?enableRegexInPath,
      'registrationPagePath': registrationPagePath,
      'requestInspection': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspection, Map<String, dynamic>>(requestInspection, (value) => value.toMap()),
      'responseInspection': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspection, Map<String, dynamic>>(responseInspection, (value) => value.toMap()),
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSet.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSet(
      creationPath: pulumi.Input.fromValue(map['creationPath'] as String),
      enableRegexInPath: (() { final guardedValue = map['enableRegexInPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      registrationPagePath: pulumi.Input.fromValue(map['registrationPagePath'] as String),
      requestInspection: (() { final guardedValue = map['requestInspection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      responseInspection: (() { final guardedValue = map['responseInspection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

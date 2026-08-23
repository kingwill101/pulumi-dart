// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_atp_rule_set_request_inspection.dart';
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_atp_rule_set_response_inspection.dart';

class WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSet {
  /// Whether or not to allow the use of regular expressions in the login page path.
  final pulumi.Input<bool>? enableRegexInPath;
  /// Path of the login endpoint for your application.
  final pulumi.Input<String> loginPath;
  /// Criteria for inspecting login requests, used by the ATP rule group to validate credentials usage. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspection>? requestInspection;
  /// Criteria for inspecting responses to login requests, used by the ATP rule group to track login failure rates. Note that Response Inspection is available only on web ACLs that protect CloudFront distributions. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspection>? responseInspection;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSet].
  /// [enableRegexInPath] Whether or not to allow the use of regular expressions in the login page path.
  /// [loginPath] Path of the login endpoint for your application.
  /// [requestInspection] Criteria for inspecting login requests, used by the ATP rule group to validate credentials usage. See below.
  /// [responseInspection] Criteria for inspecting responses to login requests, used by the ATP rule group to track login failure rates. Note that Response Inspection is available only on web ACLs that protect CloudFront distributions. See below.
  const WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSet({
    this.enableRegexInPath,
    required this.loginPath,
    this.requestInspection,
    this.responseInspection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableRegexInPath': ?enableRegexInPath,
      'loginPath': loginPath,
      'requestInspection': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspection, Map<String, dynamic>>(requestInspection, (value) => value.toMap()),
      'responseInspection': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspection, Map<String, dynamic>>(responseInspection, (value) => value.toMap()),
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSet.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSet(
      enableRegexInPath: (() { final guardedValue = map['enableRegexInPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loginPath: pulumi.Input.fromValue(map['loginPath'] as String),
      requestInspection: (() { final guardedValue = map['requestInspection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetRequestInspection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      responseInspection: (() { final guardedValue = map['responseInspection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

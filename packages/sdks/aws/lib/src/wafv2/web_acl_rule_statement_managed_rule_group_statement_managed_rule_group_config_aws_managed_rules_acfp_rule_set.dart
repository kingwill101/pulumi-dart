// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_request_inspection.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_acfp_rule_set_response_inspection.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSet {
  final pulumi.Input<String> creationPath;
  final pulumi.Input<bool>? enableRegexInPath;
  final pulumi.Input<String> registrationPagePath;
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspection>? requestInspection;
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection>? responseInspection;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSet].
  /// [creationPath] Required.
  /// [enableRegexInPath] Optional.
  /// [registrationPagePath] Required.
  /// [requestInspection] Optional.
  /// [responseInspection] Optional.
  const WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSet({
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
      'requestInspection': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspection, Map<String, dynamic>>(requestInspection, (value) => value.toMap()),
      'responseInspection': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection, Map<String, dynamic>>(responseInspection, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSet.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSet(
      creationPath: pulumi.Input.fromValue(map['creationPath'] as String),
      enableRegexInPath: (() { final guardedValue = map['enableRegexInPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      registrationPagePath: pulumi.Input.fromValue(map['registrationPagePath'] as String),
      requestInspection: (() { final guardedValue = map['requestInspection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      responseInspection: (() { final guardedValue = map['responseInspection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

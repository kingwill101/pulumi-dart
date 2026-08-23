// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_atp_rule_set_response_inspection_body_contains.dart';
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_atp_rule_set_response_inspection_header.dart';
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_atp_rule_set_response_inspection_json.dart';
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs_aws_managed_rules_atp_rule_set_response_inspection_status_code.dart';

class WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspection {
  /// Configures inspection of the response body. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionBodyContains>? bodyContains;
  /// Configures inspection of the response header. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionHeader>? header;
  /// Configures inspection of the response JSON. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionJson>? json;
  /// Configures inspection of the response status code. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionStatusCode>? statusCode;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspection].
  /// [bodyContains] Configures inspection of the response body. See below.
  /// [header] Configures inspection of the response header. See below.
  /// [json] Configures inspection of the response JSON. See below.
  /// [statusCode] Configures inspection of the response status code. See below.
  const WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspection({
    this.bodyContains,
    this.header,
    this.json,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodyContains': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionBodyContains, Map<String, dynamic>>(bodyContains, (value) => value.toMap()),
      'header': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionHeader, Map<String, dynamic>>(header, (value) => value.toMap()),
      'json': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionJson, Map<String, dynamic>>(json, (value) => value.toMap()),
      'statusCode': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionStatusCode, Map<String, dynamic>>(statusCode, (value) => value.toMap()),
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspection.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspection(
      bodyContains: (() { final guardedValue = map['bodyContains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionBodyContains.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionHeader.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      json: (() { final guardedValue = map['json']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionJson.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionStatusCode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

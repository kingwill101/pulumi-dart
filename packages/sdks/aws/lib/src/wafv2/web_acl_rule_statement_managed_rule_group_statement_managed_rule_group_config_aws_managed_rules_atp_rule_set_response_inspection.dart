// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_response_inspection_body_contains.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_response_inspection_header.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_response_inspection_json.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config_aws_managed_rules_atp_rule_set_response_inspection_status_code.dart';

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspection {
  /// Configures inspection of the response body. See `body_contains` for more details.
  final pulumi.Input<
    WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionBodyContains
  >?
  bodyContains;

  /// Configures inspection of the response header.See `header` for more details.
  final pulumi.Input<
    WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader
  >?
  header;

  /// Configures inspection of the response JSON. See `json` for more details.
  final pulumi.Input<
    WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionJson
  >?
  json;

  /// Configures inspection of the response status code.See `status_code` for more details.
  final pulumi.Input<
    WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionStatusCode
  >?
  statusCode;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspection].
  /// [bodyContains] Configures inspection of the response body. See `body_contains` for more details.
  /// [header] Configures inspection of the response header.See `header` for more details.
  /// [json] Configures inspection of the response JSON. See `json` for more details.
  /// [statusCode] Configures inspection of the response status code.See `status_code` for more details.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspection({
    this.bodyContains,
    this.header,
    this.json,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodyContains':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionBodyContains,
            Map<String, dynamic>
          >(bodyContains, (value) => value.toMap()),
      'header':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader,
            Map<String, dynamic>
          >(header, (value) => value.toMap()),
      'json':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionJson,
            Map<String, dynamic>
          >(json, (value) => value.toMap()),
      'statusCode':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionStatusCode,
            Map<String, dynamic>
          >(statusCode, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspection.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspection(
      bodyContains: (() {
        final guardedValue = map['bodyContains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionBodyContains.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      header: (() {
        final guardedValue = map['header'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      json: (() {
        final guardedValue = map['json'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionJson.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      statusCode: (() {
        final guardedValue = map['statusCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionStatusCode.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compliance_pack_config_rule.dart';
import 'compliance_pack_config_rule_id.dart';

/// Input properties used for looking up and filtering CompliancePack resources.
class CompliancePackState {
  /// The Compliance Package Name. **NOTE:** From version 1.146.0, `compliance_pack_name` can be modified.
  final pulumi.Input<String>? compliancePackName;
  /// Compliance Package Template Id.
  final pulumi.Input<String>? compliancePackTemplateId;
  /// A list of Config Rule IDs. See `config_rule_ids` below.
  final pulumi.Input<List<CompliancePackConfigRuleId>>? configRuleIds;
  /// A list of Config Rules. See `config_rules` below. **NOTE:** Field `config_rules` has been deprecated from provider version 1.141.0. New field `config_rule_ids` instead.
  final pulumi.Input<List<CompliancePackConfigRule>>? configRules;
  /// The Description of compliance pack.
  final pulumi.Input<String>? description;
  /// The Risk Level. Valid values:
  final pulumi.Input<int>? riskLevel;
  /// The status of the Compliance Pack.
  final pulumi.Input<String>? status;

  /// Creates a new [CompliancePackState].
  /// [compliancePackName] The Compliance Package Name. **NOTE:** From version 1.146.0, `compliance_pack_name` can be modified.
  /// [compliancePackTemplateId] Compliance Package Template Id.
  /// [configRuleIds] A list of Config Rule IDs. See `config_rule_ids` below.
  /// [configRules] A list of Config Rules. See `config_rules` below. **NOTE:** Field `config_rules` has been deprecated from provider version 1.141.0. New field `config_rule_ids` instead.
  /// [description] The Description of compliance pack.
  /// [riskLevel] The Risk Level. Valid values:
  /// [status] The status of the Compliance Pack.
  const CompliancePackState({
    this.compliancePackName,
    this.compliancePackTemplateId,
    this.configRuleIds,
    this.configRules,
    this.description,
    this.riskLevel,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compliancePackName': ?compliancePackName,
      'compliancePackTemplateId': ?compliancePackTemplateId,
      'configRuleIds': ?pulumi.Input.mapOptionalInputValue<List<CompliancePackConfigRuleId>, List<Map<String, dynamic>>>(configRuleIds, (value) => pulumi.Input.encodeList<CompliancePackConfigRuleId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configRules': ?pulumi.Input.mapOptionalInputValue<List<CompliancePackConfigRule>, List<Map<String, dynamic>>>(configRules, (value) => pulumi.Input.encodeList<CompliancePackConfigRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'riskLevel': ?riskLevel,
      'status': ?status,
    };
  }

  factory CompliancePackState.fromMap(Map<String, dynamic> map) {
    return CompliancePackState(
      compliancePackName: (() { final guardedValue = map['compliancePackName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compliancePackTemplateId: (() { final guardedValue = map['compliancePackTemplateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configRuleIds: (() { final guardedValue = map['configRuleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CompliancePackConfigRuleId>(guardedValue, (value) => CompliancePackConfigRuleId.fromMap((value as Map).cast<String, dynamic>()))); })(),
      configRules: (() { final guardedValue = map['configRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CompliancePackConfigRule>(guardedValue, (value) => CompliancePackConfigRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      riskLevel: (() { final guardedValue = map['riskLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


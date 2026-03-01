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
  CompliancePackState({
    pulumi.Output<String>? compliancePackName,
    pulumi.Output<String>? compliancePackTemplateId,
    pulumi.Output<List<CompliancePackConfigRuleId>>? configRuleIds,
    pulumi.Output<List<CompliancePackConfigRule>>? configRules,
    pulumi.Output<String>? description,
    pulumi.Output<int>? riskLevel,
    pulumi.Output<String>? status,
  }) :
      compliancePackName = pulumi.Input.asOptionalInput<String>(compliancePackName),
      compliancePackTemplateId = pulumi.Input.asOptionalInput<String>(compliancePackTemplateId),
      configRuleIds = pulumi.Input.asOptionalInput<List<CompliancePackConfigRuleId>>(configRuleIds),
      configRules = pulumi.Input.asOptionalInput<List<CompliancePackConfigRule>>(configRules),
      description = pulumi.Input.asOptionalInput<String>(description),
      riskLevel = pulumi.Input.asOptionalInput<int>(riskLevel),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      compliancePackName: map['compliancePackName'] == null ? null : pulumi.Output.create<String>(map['compliancePackName'] as String),
      compliancePackTemplateId: map['compliancePackTemplateId'] == null ? null : pulumi.Output.create<String>(map['compliancePackTemplateId'] as String),
      configRuleIds: map['configRuleIds'] == null ? null : pulumi.Output.create<List<CompliancePackConfigRuleId>>(pulumi.Input.decodeList<CompliancePackConfigRuleId>(map['configRuleIds'], (value) => CompliancePackConfigRuleId.fromMap((value as Map).cast<String, dynamic>()))),
      configRules: map['configRules'] == null ? null : pulumi.Output.create<List<CompliancePackConfigRule>>(pulumi.Input.decodeList<CompliancePackConfigRule>(map['configRules'], (value) => CompliancePackConfigRule.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      riskLevel: map['riskLevel'] == null ? null : pulumi.Output.create<int>(map['riskLevel'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}


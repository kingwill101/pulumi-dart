// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compliance_pack_config_rule.dart';
import 'compliance_pack_config_rule_id.dart';

/// {@template pulumi_cfg_compliance_pack_compliance_pack_args_doc}
/// The set of arguments for CompliancePack.
/// {@endtemplate}
/// {@macro pulumi_cfg_compliance_pack_compliance_pack_args_doc}
class CompliancePackArgs {
  /// The Compliance Package Name. **NOTE:** From version 1.146.0, `compliance_pack_name` can be modified.
  final pulumi.Input<String> compliancePackName;
  /// Compliance Package Template Id.
  final pulumi.Input<String>? compliancePackTemplateId;
  /// A list of Config Rule IDs. See `config_rule_ids` below.
  final pulumi.Input<List<CompliancePackConfigRuleId>>? configRuleIds;
  /// A list of Config Rules. See `config_rules` below. **NOTE:** Field `config_rules` has been deprecated from provider version 1.141.0. New field `config_rule_ids` instead.
  final pulumi.Input<List<CompliancePackConfigRule>>? configRules;
  /// The Description of compliance pack.
  final pulumi.Input<String> description;
  /// The Risk Level. Valid values:
  final pulumi.Input<int> riskLevel;

  /// Creates a new [CompliancePackArgs].
  /// [compliancePackName] The Compliance Package Name. **NOTE:** From version 1.146.0, `compliance_pack_name` can be modified.
  /// [compliancePackTemplateId] Compliance Package Template Id.
  /// [configRuleIds] A list of Config Rule IDs. See `config_rule_ids` below.
  /// [configRules] A list of Config Rules. See `config_rules` below. **NOTE:** Field `config_rules` has been deprecated from provider version 1.141.0. New field `config_rule_ids` instead.
  /// [description] The Description of compliance pack.
  /// [riskLevel] The Risk Level. Valid values:
  CompliancePackArgs({
    required pulumi.Output<String> compliancePackName,
    pulumi.Output<String>? compliancePackTemplateId,
    pulumi.Output<List<CompliancePackConfigRuleId>>? configRuleIds,
    pulumi.Output<List<CompliancePackConfigRule>>? configRules,
    required pulumi.Output<String> description,
    required pulumi.Output<int> riskLevel,
  }) :
      compliancePackName = pulumi.Input.asInput<String>(compliancePackName),
      compliancePackTemplateId = pulumi.Input.asOptionalInput<String>(compliancePackTemplateId),
      configRuleIds = pulumi.Input.asOptionalInput<List<CompliancePackConfigRuleId>>(configRuleIds),
      configRules = pulumi.Input.asOptionalInput<List<CompliancePackConfigRule>>(configRules),
      description = pulumi.Input.asInput<String>(description),
      riskLevel = pulumi.Input.asInput<int>(riskLevel);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compliancePackName': compliancePackName,
      'compliancePackTemplateId': ?compliancePackTemplateId,
      'configRuleIds': ?pulumi.Input.mapOptionalInputValue<List<CompliancePackConfigRuleId>, List<Map<String, dynamic>>>(configRuleIds, (value) => pulumi.Input.encodeList<CompliancePackConfigRuleId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configRules': ?pulumi.Input.mapOptionalInputValue<List<CompliancePackConfigRule>, List<Map<String, dynamic>>>(configRules, (value) => pulumi.Input.encodeList<CompliancePackConfigRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'riskLevel': riskLevel,
    };
  }

  factory CompliancePackArgs.fromMap(Map<String, dynamic> map) {
    return CompliancePackArgs(
      compliancePackName: pulumi.Output.create<String>(map['compliancePackName'] as String),
      compliancePackTemplateId: map['compliancePackTemplateId'] == null ? null : pulumi.Output.create<String>(map['compliancePackTemplateId'] as String),
      configRuleIds: map['configRuleIds'] == null ? null : pulumi.Output.create<List<CompliancePackConfigRuleId>>(pulumi.Input.decodeList<CompliancePackConfigRuleId>(map['configRuleIds'], (value) => CompliancePackConfigRuleId.fromMap((value as Map).cast<String, dynamic>()))),
      configRules: map['configRules'] == null ? null : pulumi.Output.create<List<CompliancePackConfigRule>>(pulumi.Input.decodeList<CompliancePackConfigRule>(map['configRules'], (value) => CompliancePackConfigRule.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Output.create<String>(map['description'] as String),
      riskLevel: pulumi.Output.create<int>(map['riskLevel'] as int),
    );
  }
}


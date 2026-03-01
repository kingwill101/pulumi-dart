// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_compliance_pack_config_rule.dart';
import 'aggregate_compliance_pack_config_rule_id.dart';

/// {@template pulumi_cfg_aggregate_compliance_pack_aggregate_compliance_pack_args_doc}
/// The set of arguments for AggregateCompliancePack.
/// {@endtemplate}
/// {@macro pulumi_cfg_aggregate_compliance_pack_aggregate_compliance_pack_args_doc}
class AggregateCompliancePackArgs {
  /// The name of compliance package name. **NOTE:** From version 1.145.0, `aggregate_compliance_pack_name` can be modified.
  final pulumi.Input<String> aggregateCompliancePackName;
  /// The ID of aggregator.
  final pulumi.Input<String> aggregatorId;
  /// The Template ID of compliance package.
  final pulumi.Input<String>? compliancePackTemplateId;
  /// A list of Config Rule IDs. See `config_rule_ids` below.
  final pulumi.Input<List<AggregateCompliancePackConfigRuleId>>? configRuleIds;
  /// A list of Config Rules. See `config_rules` below. **NOTE:** Field `config_rules` has been deprecated from provider version 1.141.0. New field `config_rule_ids` instead.
  final pulumi.Input<List<AggregateCompliancePackConfigRule>>? configRules;
  /// The description of compliance package.
  final pulumi.Input<String> description;
  /// The Risk Level. Valid values:
  final pulumi.Input<int> riskLevel;

  /// Creates a new [AggregateCompliancePackArgs].
  /// [aggregateCompliancePackName] The name of compliance package name. **NOTE:** From version 1.145.0, `aggregate_compliance_pack_name` can be modified.
  /// [aggregatorId] The ID of aggregator.
  /// [compliancePackTemplateId] The Template ID of compliance package.
  /// [configRuleIds] A list of Config Rule IDs. See `config_rule_ids` below.
  /// [configRules] A list of Config Rules. See `config_rules` below. **NOTE:** Field `config_rules` has been deprecated from provider version 1.141.0. New field `config_rule_ids` instead.
  /// [description] The description of compliance package.
  /// [riskLevel] The Risk Level. Valid values:
  AggregateCompliancePackArgs({
    required pulumi.Output<String> aggregateCompliancePackName,
    required pulumi.Output<String> aggregatorId,
    pulumi.Output<String>? compliancePackTemplateId,
    pulumi.Output<List<AggregateCompliancePackConfigRuleId>>? configRuleIds,
    pulumi.Output<List<AggregateCompliancePackConfigRule>>? configRules,
    required pulumi.Output<String> description,
    required pulumi.Output<int> riskLevel,
  }) :
      aggregateCompliancePackName = pulumi.Input.asInput<String>(aggregateCompliancePackName),
      aggregatorId = pulumi.Input.asInput<String>(aggregatorId),
      compliancePackTemplateId = pulumi.Input.asOptionalInput<String>(compliancePackTemplateId),
      configRuleIds = pulumi.Input.asOptionalInput<List<AggregateCompliancePackConfigRuleId>>(configRuleIds),
      configRules = pulumi.Input.asOptionalInput<List<AggregateCompliancePackConfigRule>>(configRules),
      description = pulumi.Input.asInput<String>(description),
      riskLevel = pulumi.Input.asInput<int>(riskLevel);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateCompliancePackName': aggregateCompliancePackName,
      'aggregatorId': aggregatorId,
      'compliancePackTemplateId': ?compliancePackTemplateId,
      'configRuleIds': ?pulumi.Input.mapOptionalInputValue<List<AggregateCompliancePackConfigRuleId>, List<Map<String, dynamic>>>(configRuleIds, (value) => pulumi.Input.encodeList<AggregateCompliancePackConfigRuleId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configRules': ?pulumi.Input.mapOptionalInputValue<List<AggregateCompliancePackConfigRule>, List<Map<String, dynamic>>>(configRules, (value) => pulumi.Input.encodeList<AggregateCompliancePackConfigRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'riskLevel': riskLevel,
    };
  }

  factory AggregateCompliancePackArgs.fromMap(Map<String, dynamic> map) {
    return AggregateCompliancePackArgs(
      aggregateCompliancePackName: pulumi.Output.create<String>(map['aggregateCompliancePackName'] as String),
      aggregatorId: pulumi.Output.create<String>(map['aggregatorId'] as String),
      compliancePackTemplateId: map['compliancePackTemplateId'] == null ? null : pulumi.Output.create<String>(map['compliancePackTemplateId'] as String),
      configRuleIds: map['configRuleIds'] == null ? null : pulumi.Output.create<List<AggregateCompliancePackConfigRuleId>>(pulumi.Input.decodeList<AggregateCompliancePackConfigRuleId>(map['configRuleIds'], (value) => AggregateCompliancePackConfigRuleId.fromMap((value as Map).cast<String, dynamic>()))),
      configRules: map['configRules'] == null ? null : pulumi.Output.create<List<AggregateCompliancePackConfigRule>>(pulumi.Input.decodeList<AggregateCompliancePackConfigRule>(map['configRules'], (value) => AggregateCompliancePackConfigRule.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Output.create<String>(map['description'] as String),
      riskLevel: pulumi.Output.create<int>(map['riskLevel'] as int),
    );
  }
}


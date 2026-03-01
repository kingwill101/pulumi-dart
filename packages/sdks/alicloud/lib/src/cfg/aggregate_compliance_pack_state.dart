// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_compliance_pack_config_rule.dart';
import 'aggregate_compliance_pack_config_rule_id.dart';

/// Input properties used for looking up and filtering AggregateCompliancePack resources.
class AggregateCompliancePackState {
  /// The name of compliance package name. **NOTE:** From version 1.145.0, `aggregate_compliance_pack_name` can be modified.
  final pulumi.Input<String>? aggregateCompliancePackName;
  /// The ID of the compliance package.
  final pulumi.Input<String>? aggregatorCompliancePackId;
  /// The ID of aggregator.
  final pulumi.Input<String>? aggregatorId;
  /// The Template ID of compliance package.
  final pulumi.Input<String>? compliancePackTemplateId;
  /// A list of Config Rule IDs. See `config_rule_ids` below.
  final pulumi.Input<List<AggregateCompliancePackConfigRuleId>>? configRuleIds;
  /// A list of Config Rules. See `config_rules` below. **NOTE:** Field `config_rules` has been deprecated from provider version 1.141.0. New field `config_rule_ids` instead.
  final pulumi.Input<List<AggregateCompliancePackConfigRule>>? configRules;
  /// The description of compliance package.
  final pulumi.Input<String>? description;
  /// The Risk Level. Valid values:
  final pulumi.Input<int>? riskLevel;
  /// The status of the Aggregate Compliance Pack.
  final pulumi.Input<String>? status;

  /// Creates a new [AggregateCompliancePackState].
  /// [aggregateCompliancePackName] The name of compliance package name. **NOTE:** From version 1.145.0, `aggregate_compliance_pack_name` can be modified.
  /// [aggregatorCompliancePackId] The ID of the compliance package.
  /// [aggregatorId] The ID of aggregator.
  /// [compliancePackTemplateId] The Template ID of compliance package.
  /// [configRuleIds] A list of Config Rule IDs. See `config_rule_ids` below.
  /// [configRules] A list of Config Rules. See `config_rules` below. **NOTE:** Field `config_rules` has been deprecated from provider version 1.141.0. New field `config_rule_ids` instead.
  /// [description] The description of compliance package.
  /// [riskLevel] The Risk Level. Valid values:
  /// [status] The status of the Aggregate Compliance Pack.
  AggregateCompliancePackState({
    pulumi.Output<String>? aggregateCompliancePackName,
    pulumi.Output<String>? aggregatorCompliancePackId,
    pulumi.Output<String>? aggregatorId,
    pulumi.Output<String>? compliancePackTemplateId,
    pulumi.Output<List<AggregateCompliancePackConfigRuleId>>? configRuleIds,
    pulumi.Output<List<AggregateCompliancePackConfigRule>>? configRules,
    pulumi.Output<String>? description,
    pulumi.Output<int>? riskLevel,
    pulumi.Output<String>? status,
  }) :
      aggregateCompliancePackName = pulumi.Input.asOptionalInput<String>(aggregateCompliancePackName),
      aggregatorCompliancePackId = pulumi.Input.asOptionalInput<String>(aggregatorCompliancePackId),
      aggregatorId = pulumi.Input.asOptionalInput<String>(aggregatorId),
      compliancePackTemplateId = pulumi.Input.asOptionalInput<String>(compliancePackTemplateId),
      configRuleIds = pulumi.Input.asOptionalInput<List<AggregateCompliancePackConfigRuleId>>(configRuleIds),
      configRules = pulumi.Input.asOptionalInput<List<AggregateCompliancePackConfigRule>>(configRules),
      description = pulumi.Input.asOptionalInput<String>(description),
      riskLevel = pulumi.Input.asOptionalInput<int>(riskLevel),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateCompliancePackName': ?aggregateCompliancePackName,
      'aggregatorCompliancePackId': ?aggregatorCompliancePackId,
      'aggregatorId': ?aggregatorId,
      'compliancePackTemplateId': ?compliancePackTemplateId,
      'configRuleIds': ?pulumi.Input.mapOptionalInputValue<List<AggregateCompliancePackConfigRuleId>, List<Map<String, dynamic>>>(configRuleIds, (value) => pulumi.Input.encodeList<AggregateCompliancePackConfigRuleId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configRules': ?pulumi.Input.mapOptionalInputValue<List<AggregateCompliancePackConfigRule>, List<Map<String, dynamic>>>(configRules, (value) => pulumi.Input.encodeList<AggregateCompliancePackConfigRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'riskLevel': ?riskLevel,
      'status': ?status,
    };
  }

  factory AggregateCompliancePackState.fromMap(Map<String, dynamic> map) {
    return AggregateCompliancePackState(
      aggregateCompliancePackName: map['aggregateCompliancePackName'] == null ? null : pulumi.Output.create<String>(map['aggregateCompliancePackName'] as String),
      aggregatorCompliancePackId: map['aggregatorCompliancePackId'] == null ? null : pulumi.Output.create<String>(map['aggregatorCompliancePackId'] as String),
      aggregatorId: map['aggregatorId'] == null ? null : pulumi.Output.create<String>(map['aggregatorId'] as String),
      compliancePackTemplateId: map['compliancePackTemplateId'] == null ? null : pulumi.Output.create<String>(map['compliancePackTemplateId'] as String),
      configRuleIds: map['configRuleIds'] == null ? null : pulumi.Output.create<List<AggregateCompliancePackConfigRuleId>>(pulumi.Input.decodeList<AggregateCompliancePackConfigRuleId>(map['configRuleIds'], (value) => AggregateCompliancePackConfigRuleId.fromMap((value as Map).cast<String, dynamic>()))),
      configRules: map['configRules'] == null ? null : pulumi.Output.create<List<AggregateCompliancePackConfigRule>>(pulumi.Input.decodeList<AggregateCompliancePackConfigRule>(map['configRules'], (value) => AggregateCompliancePackConfigRule.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      riskLevel: map['riskLevel'] == null ? null : pulumi.Output.create<int>(map['riskLevel'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}


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
    this.aggregateCompliancePackName,
    this.aggregatorCompliancePackId,
    this.aggregatorId,
    this.compliancePackTemplateId,
    this.configRuleIds,
    this.configRules,
    this.description,
    this.riskLevel,
    this.status,
  });

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
      aggregateCompliancePackName: (() { final guardedValue = map['aggregateCompliancePackName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aggregatorCompliancePackId: (() { final guardedValue = map['aggregatorCompliancePackId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aggregatorId: (() { final guardedValue = map['aggregatorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compliancePackTemplateId: (() { final guardedValue = map['compliancePackTemplateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configRuleIds: (() { final guardedValue = map['configRuleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AggregateCompliancePackConfigRuleId>(guardedValue, (value) => AggregateCompliancePackConfigRuleId.fromMap((value as Map).cast<String, dynamic>()))); })(),
      configRules: (() { final guardedValue = map['configRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AggregateCompliancePackConfigRule>(guardedValue, (value) => AggregateCompliancePackConfigRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      riskLevel: (() { final guardedValue = map['riskLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


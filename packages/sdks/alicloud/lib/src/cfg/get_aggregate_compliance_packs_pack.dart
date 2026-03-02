// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aggregate_compliance_packs_pack_config_rule.dart';

class GetAggregateCompliancePacksPack {
  /// The Aliyun User Id.
  final pulumi.Input<String> accountId;
  /// The Aggregate Compliance Package Name.
  final pulumi.Input<String> aggregateCompliancePackName;
  /// The Aggregate Compliance Package Id.
  final pulumi.Input<String> aggregatorCompliancePackId;
  /// The template ID of the Compliance Package.
  final pulumi.Input<String> compliancePackTemplateId;
  /// A list of The Aggregate Compliance Package Rules.
  final pulumi.Input<List<GetAggregateCompliancePacksPackConfigRule>> configRules;
  /// The description of aggregate compliance pack.
  final pulumi.Input<String> description;
  /// The ID of the Aggregate Compliance Pack.
  final pulumi.Input<String> id;
  /// The Risk Level.
  final pulumi.Input<int> riskLevel;
  /// The status of the resource. Valid values `ACTIVE`, `CREATING`, `INACTIVE`.
  final pulumi.Input<String> status;

  /// Creates a new [GetAggregateCompliancePacksPack].
  /// [accountId] The Aliyun User Id.
  /// [aggregateCompliancePackName] The Aggregate Compliance Package Name.
  /// [aggregatorCompliancePackId] The Aggregate Compliance Package Id.
  /// [compliancePackTemplateId] The template ID of the Compliance Package.
  /// [configRules] A list of The Aggregate Compliance Package Rules.
  /// [description] The description of aggregate compliance pack.
  /// [id] The ID of the Aggregate Compliance Pack.
  /// [riskLevel] The Risk Level.
  /// [status] The status of the resource. Valid values `ACTIVE`, `CREATING`, `INACTIVE`.
  GetAggregateCompliancePacksPack({
    required this.accountId,
    required this.aggregateCompliancePackName,
    required this.aggregatorCompliancePackId,
    required this.compliancePackTemplateId,
    required this.configRules,
    required this.description,
    required this.id,
    required this.riskLevel,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'aggregateCompliancePackName': aggregateCompliancePackName,
      'aggregatorCompliancePackId': aggregatorCompliancePackId,
      'compliancePackTemplateId': compliancePackTemplateId,
      'configRules': pulumi.Input.mapInputValue<List<GetAggregateCompliancePacksPackConfigRule>, List<Map<String, dynamic>>>(configRules, (value) => pulumi.Input.encodeList<GetAggregateCompliancePacksPackConfigRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'id': id,
      'riskLevel': riskLevel,
      'status': status,
    };
  }

  factory GetAggregateCompliancePacksPack.fromMap(Map<String, dynamic> map) {
    return GetAggregateCompliancePacksPack(
      accountId: (map['accountId'] as String).input(),
      aggregateCompliancePackName: (map['aggregateCompliancePackName'] as String).input(),
      aggregatorCompliancePackId: (map['aggregatorCompliancePackId'] as String).input(),
      compliancePackTemplateId: (map['compliancePackTemplateId'] as String).input(),
      configRules: (pulumi.Input.decodeList<GetAggregateCompliancePacksPackConfigRule>(map['configRules'], (value) => GetAggregateCompliancePacksPackConfigRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      riskLevel: (map['riskLevel'] as int).input(),
      status: (map['status'] as String).input(),
    );
  }
}


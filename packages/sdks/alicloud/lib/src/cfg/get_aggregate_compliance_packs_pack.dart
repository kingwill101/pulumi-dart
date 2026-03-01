// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aggregate_compliance_packs_pack_config_rule.dart';

class GetAggregateCompliancePacksPack {
  /// The Aliyun User Id.
  final String accountId;
  /// The Aggregate Compliance Package Name.
  final String aggregateCompliancePackName;
  /// The Aggregate Compliance Package Id.
  final String aggregatorCompliancePackId;
  /// The template ID of the Compliance Package.
  final String compliancePackTemplateId;
  /// A list of The Aggregate Compliance Package Rules.
  final List<GetAggregateCompliancePacksPackConfigRule> configRules;
  /// The description of aggregate compliance pack.
  final String description;
  /// The ID of the Aggregate Compliance Pack.
  final String id;
  /// The Risk Level.
  final int riskLevel;
  /// The status of the resource. Valid values `ACTIVE`, `CREATING`, `INACTIVE`.
  final String status;

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
      'configRules': pulumi.Input.encodeList<GetAggregateCompliancePacksPackConfigRule, Map<String, dynamic>>(configRules, (value) => value.toMap()),
      'description': description,
      'id': id,
      'riskLevel': riskLevel,
      'status': status,
    };
  }

  factory GetAggregateCompliancePacksPack.fromMap(Map<String, dynamic> map) {
    return GetAggregateCompliancePacksPack(
      accountId: map['accountId'] as String,
      aggregateCompliancePackName: map['aggregateCompliancePackName'] as String,
      aggregatorCompliancePackId: map['aggregatorCompliancePackId'] as String,
      compliancePackTemplateId: map['compliancePackTemplateId'] as String,
      configRules: pulumi.Input.decodeList<GetAggregateCompliancePacksPackConfigRule>(map['configRules'], (value) => GetAggregateCompliancePacksPackConfigRule.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      id: map['id'] as String,
      riskLevel: map['riskLevel'] as int,
      status: map['status'] as String,
    );
  }
}


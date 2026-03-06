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
  const GetAggregateCompliancePacksPack({
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
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      aggregateCompliancePackName: pulumi.Input.fromValue(map['aggregateCompliancePackName'] as String),
      aggregatorCompliancePackId: pulumi.Input.fromValue(map['aggregatorCompliancePackId'] as String),
      compliancePackTemplateId: pulumi.Input.fromValue(map['compliancePackTemplateId'] as String),
      configRules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAggregateCompliancePacksPackConfigRule>(map['configRules']!, (value) => GetAggregateCompliancePacksPackConfigRule.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      riskLevel: pulumi.Input.fromValue(map['riskLevel'] as int),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}


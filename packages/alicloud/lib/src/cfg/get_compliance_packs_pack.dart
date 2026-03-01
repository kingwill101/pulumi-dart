// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_compliance_packs_pack_config_rule.dart';

class GetCompliancePacksPack {
  /// The Aliyun User Id.
  final String accountId;
  /// The Compliance Package ID.
  final String compliancePackId;
  /// The Compliance Package Name.
  final String compliancePackName;
  /// The template ID of the Compliance Package.
  final String compliancePackTemplateId;
  /// A list of The Compliance Package Rules.
  final List<GetCompliancePacksPackConfigRule> configRules;
  /// The description of compliance pack.
  final String description;
  /// The ID of the Compliance Pack.
  final String id;
  /// The Ris Level.
  final int riskLevel;
  /// The status of the resource. Valid values `ACTIVE`, `CREATING`.
  final String status;

  /// Creates a new [GetCompliancePacksPack].
  /// [accountId] The Aliyun User Id.
  /// [compliancePackId] The Compliance Package ID.
  /// [compliancePackName] The Compliance Package Name.
  /// [compliancePackTemplateId] The template ID of the Compliance Package.
  /// [configRules] A list of The Compliance Package Rules.
  /// [description] The description of compliance pack.
  /// [id] The ID of the Compliance Pack.
  /// [riskLevel] The Ris Level.
  /// [status] The status of the resource. Valid values `ACTIVE`, `CREATING`.
  GetCompliancePacksPack({
    required this.accountId,
    required this.compliancePackId,
    required this.compliancePackName,
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
      'compliancePackId': compliancePackId,
      'compliancePackName': compliancePackName,
      'compliancePackTemplateId': compliancePackTemplateId,
      'configRules': pulumi.Input.encodeList<GetCompliancePacksPackConfigRule, Map<String, dynamic>>(configRules, (value) => value.toMap()),
      'description': description,
      'id': id,
      'riskLevel': riskLevel,
      'status': status,
    };
  }

  factory GetCompliancePacksPack.fromMap(Map<String, dynamic> map) {
    return GetCompliancePacksPack(
      accountId: map['accountId'] as String,
      compliancePackId: map['compliancePackId'] as String,
      compliancePackName: map['compliancePackName'] as String,
      compliancePackTemplateId: map['compliancePackTemplateId'] as String,
      configRules: pulumi.Input.decodeList<GetCompliancePacksPackConfigRule>(map['configRules'], (value) => GetCompliancePacksPackConfigRule.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      id: map['id'] as String,
      riskLevel: map['riskLevel'] as int,
      status: map['status'] as String,
    );
  }
}


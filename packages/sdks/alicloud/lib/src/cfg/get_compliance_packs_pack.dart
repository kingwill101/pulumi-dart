// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_compliance_packs_pack_config_rule.dart';

class GetCompliancePacksPack {
  /// The Aliyun User Id.
  final pulumi.Input<String> accountId;
  /// The Compliance Package ID.
  final pulumi.Input<String> compliancePackId;
  /// The Compliance Package Name.
  final pulumi.Input<String> compliancePackName;
  /// The template ID of the Compliance Package.
  final pulumi.Input<String> compliancePackTemplateId;
  /// A list of The Compliance Package Rules.
  final pulumi.Input<List<GetCompliancePacksPackConfigRule>> configRules;
  /// The description of compliance pack.
  final pulumi.Input<String> description;
  /// The ID of the Compliance Pack.
  final pulumi.Input<String> id;
  /// The Ris Level.
  final pulumi.Input<int> riskLevel;
  /// The status of the resource. Valid values `ACTIVE`, `CREATING`.
  final pulumi.Input<String> status;

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
      'configRules': pulumi.Input.mapInputValue<List<GetCompliancePacksPackConfigRule>, List<Map<String, dynamic>>>(configRules, (value) => pulumi.Input.encodeList<GetCompliancePacksPackConfigRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'id': id,
      'riskLevel': riskLevel,
      'status': status,
    };
  }

  factory GetCompliancePacksPack.fromMap(Map<String, dynamic> map) {
    return GetCompliancePacksPack(
      accountId: (map['accountId'] as String).input(),
      compliancePackId: (map['compliancePackId'] as String).input(),
      compliancePackName: (map['compliancePackName'] as String).input(),
      compliancePackTemplateId: (map['compliancePackTemplateId'] as String).input(),
      configRules: (pulumi.Input.decodeList<GetCompliancePacksPackConfigRule>(map['configRules'], (value) => GetCompliancePacksPackConfigRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      riskLevel: (map['riskLevel'] as int).input(),
      status: (map['status'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule.dart';

/// Result data returned by getRules.
class GetRulesResult {
  /// Sensitive Data Identification Rules for the Type of.
  final int? category;
  /// The Content Classification.
  final String? contentCategory;
  /// Sensitive Data Identification Rules of Type. 0: the Built-in 1: The User-Defined.
  final int? customType;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? name;
  final String? nameRegex;
  /// A list of Rule names.
  final List<String> names;
  final String? outputFile;
  /// Product ID.
  final String? productId;
  /// Sensitive Data Identification Rules of Risk Level ID. Valid values:1:S1, Weak Risk Level. 2:S2, Medium Risk Level. 3:S3 High Risk Level. 4:S4, the Highest Risk Level.
  final String? riskLevelId;
  final int? ruleType;
  /// A list of Sddp Rules. Each element contains the following attributes:
  final List<GetRulesRule> rules;
  /// Sensitive Data Identification Rules Detection State of.
  final String? status;
  /// The Level of Risk.
  final int? warnLevel;

  /// Creates a new [GetRulesResult].
  /// [category] Sensitive Data Identification Rules for the Type of.
  /// [contentCategory] The Content Classification.
  /// [customType] Sensitive Data Identification Rules of Type. 0: the Built-in 1: The User-Defined.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [name] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of Rule names.
  /// [outputFile] Optional.
  /// [productId] Product ID.
  /// [riskLevelId] Sensitive Data Identification Rules of Risk Level ID. Valid values:1:S1, Weak Risk Level. 2:S2, Medium Risk Level. 3:S3 High Risk Level. 4:S4, the Highest Risk Level.
  /// [ruleType] Optional.
  /// [rules] A list of Sddp Rules. Each element contains the following attributes:
  /// [status] Sensitive Data Identification Rules Detection State of.
  /// [warnLevel] The Level of Risk.
  GetRulesResult({
    this.category,
    this.contentCategory,
    this.customType,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.name,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.productId,
    this.riskLevelId,
    this.ruleType,
    required this.rules,
    this.status,
    this.warnLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'contentCategory': ?contentCategory,
      'customType': ?customType,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'productId': ?productId,
      'riskLevelId': ?riskLevelId,
      'ruleType': ?ruleType,
      'rules': pulumi.Input.encodeList<GetRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'status': ?status,
      'warnLevel': ?warnLevel,
    };
  }

  factory GetRulesResult.fromMap(Map<String, dynamic> map) {
    return GetRulesResult(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return guardedValue as int; })(),
      contentCategory: (() { final guardedValue = map['contentCategory']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customType: (() { final guardedValue = map['customType']; if (guardedValue == null) return null; return guardedValue as int; })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productId: (() { final guardedValue = map['productId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      riskLevelId: (() { final guardedValue = map['riskLevelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleType: (() { final guardedValue = map['ruleType']; if (guardedValue == null) return null; return guardedValue as int; })(),
      rules: pulumi.Input.decodeList<GetRulesRule>(map['rules']!, (value) => GetRulesRule.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      warnLevel: (() { final guardedValue = map['warnLevel']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}


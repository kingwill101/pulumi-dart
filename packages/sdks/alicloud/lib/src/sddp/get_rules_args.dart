// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sddp_get_rules_get_rules_args_doc}
/// Arguments for getRules.
/// {@endtemplate}
/// {@macro pulumi_sddp_get_rules_get_rules_args_doc}
class GetRulesArgs {
  /// Sensitive Data Identification Rules for the Type of. Valid values:
  final pulumi.Input<int>? category;
  /// The Content Classification.
  final pulumi.Input<String>? contentCategory;
  /// Sensitive Data Identification Rules of Type. Valid values:
  final pulumi.Input<int>? customType;
  final pulumi.Input<bool>? enableDetails;
  /// A list of Rule IDs.
  final pulumi.Input<List<String>>? ids;
  /// The name of rule.
  final pulumi.Input<String>? name;
  /// A regex string to filter results by Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Product ID. Valid values:
  final pulumi.Input<String>? productId;
  /// Sensitive Data Identification Rules of Risk Level ID. Valid values:
  final pulumi.Input<String>? riskLevelId;
  /// Rule Type.
  final pulumi.Input<int>? ruleType;
  /// Sensitive Data Identification Rules Detection State of.
  final pulumi.Input<String>? status;
  /// The Level of Risk. Valid values:
  final pulumi.Input<int>? warnLevel;

  /// Creates a new [GetRulesArgs].
  /// [category] Sensitive Data Identification Rules for the Type of. Valid values:
  /// [contentCategory] The Content Classification.
  /// [customType] Sensitive Data Identification Rules of Type. Valid values:
  /// [enableDetails] Optional.
  /// [ids] A list of Rule IDs.
  /// [name] The name of rule.
  /// [nameRegex] A regex string to filter results by Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [productId] Product ID. Valid values:
  /// [riskLevelId] Sensitive Data Identification Rules of Risk Level ID. Valid values:
  /// [ruleType] Rule Type.
  /// [status] Sensitive Data Identification Rules Detection State of.
  /// [warnLevel] The Level of Risk. Valid values:
  GetRulesArgs({
    this.category,
    this.contentCategory,
    this.customType,
    this.enableDetails,
    this.ids,
    this.name,
    this.nameRegex,
    this.outputFile,
    this.productId,
    this.riskLevelId,
    this.ruleType,
    this.status,
    this.warnLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'contentCategory': ?contentCategory,
      'customType': ?customType,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'productId': ?productId,
      'riskLevelId': ?riskLevelId,
      'ruleType': ?ruleType,
      'status': ?status,
      'warnLevel': ?warnLevel,
    };
  }

  factory GetRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetRulesArgs(
      category: map['category'] == null ? null : (map['category'] as int).input(),
      contentCategory: map['contentCategory'] == null ? null : (map['contentCategory'] as String).input(),
      customType: map['customType'] == null ? null : (map['customType'] as int).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      productId: map['productId'] == null ? null : (map['productId'] as String).input(),
      riskLevelId: map['riskLevelId'] == null ? null : (map['riskLevelId'] as String).input(),
      ruleType: map['ruleType'] == null ? null : (map['ruleType'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      warnLevel: map['warnLevel'] == null ? null : (map['warnLevel'] as int).input(),
    );
  }
}


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
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      contentCategory: (() { final guardedValue = map['contentCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customType: (() { final guardedValue = map['customType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productId: (() { final guardedValue = map['productId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      riskLevelId: (() { final guardedValue = map['riskLevelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleType: (() { final guardedValue = map['ruleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warnLevel: (() { final guardedValue = map['warnLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sddp_rule_rule_args_doc}
/// The set of arguments for Rule.
/// {@endtemplate}
/// {@macro pulumi_sddp_rule_rule_args_doc}
class RuleArgs {
  /// The content type of the sensitive data detection rule. Valid values:
  final pulumi.Input<int> category;

  /// The content of the sensitive data detection rule. **NOTE:** From version 1.222.0, `content` can be modified.
  final pulumi.Input<String> content;

  /// The type of the content in the sensitive data detection rule. **NOTE:** From version 1.222.0, `content_category` cannot be modified.
  final pulumi.Input<String>? contentCategory;

  /// The description of the rule. **NOTE:** From version 1.222.0, `description` cannot be modified.
  final pulumi.Input<String>? description;

  /// The language of the content within the request and response. Default value: `zh`. Valid values:
  final pulumi.Input<String>? lang;

  /// The name of the service to which data in the column of the table belongs. Valid values: `OSS`, `RDS`, `ODPS`(MaxCompute).
  final pulumi.Input<String>? productCode;

  /// The ID of the service to which the data asset belongs. Valid values:
  final pulumi.Input<String>? productId;

  /// The sensitivity level of the sensitive data that hits the sensitive data detection rule. Valid values:
  final pulumi.Input<String>? riskLevelId;

  /// The name of the sensitive data detection rule. **NOTE:** From version 1.222.0, `rule_name` can be modified.
  final pulumi.Input<String> ruleName;

  /// The type of the sensitive data detection rule. Valid values:
  final pulumi.Input<int>? ruleType;

  /// The statistical expression. **NOTE:** From version 1.222.0, `stat_express` cannot be modified.
  final pulumi.Input<String>? statExpress;

  /// Sensitive Specifies whether to enable the sensitive data detection rule. Valid values:
  final pulumi.Input<int>? status;

  /// The code of the service to which the sensitive data detection rule is applied. **NOTE:** From version 1.222.0, `target` cannot be modified.
  final pulumi.Input<String>? target;

  /// The risk level of the alert that is triggered. Valid values:
  final pulumi.Input<int>? warnLevel;

  /// Creates a new [RuleArgs].
  /// [category] The content type of the sensitive data detection rule. Valid values:
  /// [content] The content of the sensitive data detection rule. **NOTE:** From version 1.222.0, `content` can be modified.
  /// [contentCategory] The type of the content in the sensitive data detection rule. **NOTE:** From version 1.222.0, `content_category` cannot be modified.
  /// [description] The description of the rule. **NOTE:** From version 1.222.0, `description` cannot be modified.
  /// [lang] The language of the content within the request and response. Default value: `zh`. Valid values:
  /// [productCode] The name of the service to which data in the column of the table belongs. Valid values: `OSS`, `RDS`, `ODPS`(MaxCompute).
  /// [productId] The ID of the service to which the data asset belongs. Valid values:
  /// [riskLevelId] The sensitivity level of the sensitive data that hits the sensitive data detection rule. Valid values:
  /// [ruleName] The name of the sensitive data detection rule. **NOTE:** From version 1.222.0, `rule_name` can be modified.
  /// [ruleType] The type of the sensitive data detection rule. Valid values:
  /// [statExpress] The statistical expression. **NOTE:** From version 1.222.0, `stat_express` cannot be modified.
  /// [status] Sensitive Specifies whether to enable the sensitive data detection rule. Valid values:
  /// [target] The code of the service to which the sensitive data detection rule is applied. **NOTE:** From version 1.222.0, `target` cannot be modified.
  /// [warnLevel] The risk level of the alert that is triggered. Valid values:
  RuleArgs({
    required this.category,
    required this.content,
    this.contentCategory,
    this.description,
    this.lang,
    this.productCode,
    this.productId,
    this.riskLevelId,
    required this.ruleName,
    this.ruleType,
    this.statExpress,
    this.status,
    this.target,
    this.warnLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'content': content,
      'contentCategory': ?contentCategory,
      'description': ?description,
      'lang': ?lang,
      'productCode': ?productCode,
      'productId': ?productId,
      'riskLevelId': ?riskLevelId,
      'ruleName': ruleName,
      'ruleType': ?ruleType,
      'statExpress': ?statExpress,
      'status': ?status,
      'target': ?target,
      'warnLevel': ?warnLevel,
    };
  }

  factory RuleArgs.fromMap(Map<String, dynamic> map) {
    return RuleArgs(
      category: pulumi.Input.fromValue(map['category'] as int),
      content: pulumi.Input.fromValue(map['content'] as String),
      contentCategory: (() {
        final guardedValue = map['contentCategory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productCode: (() {
        final guardedValue = map['productCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productId: (() {
        final guardedValue = map['productId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      riskLevelId: (() {
        final guardedValue = map['riskLevelId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      ruleType: (() {
        final guardedValue = map['ruleType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      statExpress: (() {
        final guardedValue = map['statExpress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      target: (() {
        final guardedValue = map['target'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      warnLevel: (() {
        final guardedValue = map['warnLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}

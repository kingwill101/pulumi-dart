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
    required int category,
    required String content,
    String? contentCategory,
    String? description,
    String? lang,
    String? productCode,
    String? productId,
    String? riskLevelId,
    required String ruleName,
    int? ruleType,
    String? statExpress,
    int? status,
    String? target,
    int? warnLevel,
  }) :
      category = pulumi.Input.asInput<int>(category),
      content = pulumi.Input.asInput<String>(content),
      contentCategory = pulumi.Input.asOptionalInput<String>(contentCategory),
      description = pulumi.Input.asOptionalInput<String>(description),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      productCode = pulumi.Input.asOptionalInput<String>(productCode),
      productId = pulumi.Input.asOptionalInput<String>(productId),
      riskLevelId = pulumi.Input.asOptionalInput<String>(riskLevelId),
      ruleName = pulumi.Input.asInput<String>(ruleName),
      ruleType = pulumi.Input.asOptionalInput<int>(ruleType),
      statExpress = pulumi.Input.asOptionalInput<String>(statExpress),
      status = pulumi.Input.asOptionalInput<int>(status),
      target = pulumi.Input.asOptionalInput<String>(target),
      warnLevel = pulumi.Input.asOptionalInput<int>(warnLevel);

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
      category: map['category'] as int,
      content: map['content'] as String,
      contentCategory: map['contentCategory'] == null ? null : map['contentCategory'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      lang: map['lang'] == null ? null : map['lang'] as String,
      productCode: map['productCode'] == null ? null : map['productCode'] as String,
      productId: map['productId'] == null ? null : map['productId'] as String,
      riskLevelId: map['riskLevelId'] == null ? null : map['riskLevelId'] as String,
      ruleName: map['ruleName'] as String,
      ruleType: map['ruleType'] == null ? null : map['ruleType'] as int,
      statExpress: map['statExpress'] == null ? null : map['statExpress'] as String,
      status: map['status'] == null ? null : map['status'] as int,
      target: map['target'] == null ? null : map['target'] as String,
      warnLevel: map['warnLevel'] == null ? null : map['warnLevel'] as int,
    );
  }
}


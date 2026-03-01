// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Rule resources.
class RuleState {
  /// The content type of the sensitive data detection rule. Valid values:
  final pulumi.Input<int>? category;
  /// The content of the sensitive data detection rule. **NOTE:** From version 1.222.0, `content` can be modified.
  final pulumi.Input<String>? content;
  /// The type of the content in the sensitive data detection rule. **NOTE:** From version 1.222.0, `content_category` cannot be modified.
  final pulumi.Input<String>? contentCategory;
  /// The type of the sensitive data detection rule. **NOTE:** From version 1.222.0, `custom_type` cannot be specified when create Rule.
  final pulumi.Input<int>? customType;
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
  final pulumi.Input<String>? ruleName;
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

  /// Creates a new [RuleState].
  /// [category] The content type of the sensitive data detection rule. Valid values:
  /// [content] The content of the sensitive data detection rule. **NOTE:** From version 1.222.0, `content` can be modified.
  /// [contentCategory] The type of the content in the sensitive data detection rule. **NOTE:** From version 1.222.0, `content_category` cannot be modified.
  /// [customType] The type of the sensitive data detection rule. **NOTE:** From version 1.222.0, `custom_type` cannot be specified when create Rule.
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
  RuleState({
    pulumi.Output<int>? category,
    pulumi.Output<String>? content,
    pulumi.Output<String>? contentCategory,
    pulumi.Output<int>? customType,
    pulumi.Output<String>? description,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? productCode,
    pulumi.Output<String>? productId,
    pulumi.Output<String>? riskLevelId,
    pulumi.Output<String>? ruleName,
    pulumi.Output<int>? ruleType,
    pulumi.Output<String>? statExpress,
    pulumi.Output<int>? status,
    pulumi.Output<String>? target,
    pulumi.Output<int>? warnLevel,
  }) :
      category = pulumi.Input.asOptionalInput<int>(category),
      content = pulumi.Input.asOptionalInput<String>(content),
      contentCategory = pulumi.Input.asOptionalInput<String>(contentCategory),
      customType = pulumi.Input.asOptionalInput<int>(customType),
      description = pulumi.Input.asOptionalInput<String>(description),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      productCode = pulumi.Input.asOptionalInput<String>(productCode),
      productId = pulumi.Input.asOptionalInput<String>(productId),
      riskLevelId = pulumi.Input.asOptionalInput<String>(riskLevelId),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      ruleType = pulumi.Input.asOptionalInput<int>(ruleType),
      statExpress = pulumi.Input.asOptionalInput<String>(statExpress),
      status = pulumi.Input.asOptionalInput<int>(status),
      target = pulumi.Input.asOptionalInput<String>(target),
      warnLevel = pulumi.Input.asOptionalInput<int>(warnLevel);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'content': ?content,
      'contentCategory': ?contentCategory,
      'customType': ?customType,
      'description': ?description,
      'lang': ?lang,
      'productCode': ?productCode,
      'productId': ?productId,
      'riskLevelId': ?riskLevelId,
      'ruleName': ?ruleName,
      'ruleType': ?ruleType,
      'statExpress': ?statExpress,
      'status': ?status,
      'target': ?target,
      'warnLevel': ?warnLevel,
    };
  }

  factory RuleState.fromMap(Map<String, dynamic> map) {
    return RuleState(
      category: map['category'] == null ? null : pulumi.Output.create<int>(map['category'] as int),
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      contentCategory: map['contentCategory'] == null ? null : pulumi.Output.create<String>(map['contentCategory'] as String),
      customType: map['customType'] == null ? null : pulumi.Output.create<int>(map['customType'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      productCode: map['productCode'] == null ? null : pulumi.Output.create<String>(map['productCode'] as String),
      productId: map['productId'] == null ? null : pulumi.Output.create<String>(map['productId'] as String),
      riskLevelId: map['riskLevelId'] == null ? null : pulumi.Output.create<String>(map['riskLevelId'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      ruleType: map['ruleType'] == null ? null : pulumi.Output.create<int>(map['ruleType'] as int),
      statExpress: map['statExpress'] == null ? null : pulumi.Output.create<String>(map['statExpress'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<int>(map['status'] as int),
      target: map['target'] == null ? null : pulumi.Output.create<String>(map['target'] as String),
      warnLevel: map['warnLevel'] == null ? null : pulumi.Output.create<int>(map['warnLevel'] as int),
    );
  }
}


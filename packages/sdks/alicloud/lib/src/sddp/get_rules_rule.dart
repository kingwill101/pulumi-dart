// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesRule {
  /// Sensitive Data Identification Rules for the Type of. Valid values:
  final pulumi.Input<int> category;

  /// Sensitive Data Identification Rules Belongs Type Name.
  final pulumi.Input<String> categoryName;

  /// Sensitive Data Identification Rules the Content.
  final pulumi.Input<String> content;

  /// The Content Classification.
  final pulumi.Input<String> contentCategory;

  /// Sensitive Data Identification Rules the Creation Time of the Number of Milliseconds.
  final pulumi.Input<String> createTime;

  /// Sensitive Data Identification Rules of Type. Valid values:
  final pulumi.Input<int> customType;

  /// Sensitive Data Identification a Description of the Rule Information.
  final pulumi.Input<String> description;

  /// Sensitive Data Identification Rules, Founder of Account Display Name.
  final pulumi.Input<String> displayName;

  /// Sensitive Data Identification Rules to the Modified Time of the Number of Milliseconds.
  final pulumi.Input<String> gmtModified;

  /// The ID of the Rule.
  final pulumi.Input<String> id;

  /// Sensitive Data Identification Rules, Founder Of Account Login.
  final pulumi.Input<String> loginName;

  /// The Primary Key.
  final pulumi.Input<String> majorKey;

  /// The name of rule.
  final pulumi.Input<String> name;

  /// Product Code.
  final pulumi.Input<String> productCode;

  /// Product ID. Valid values:
  final pulumi.Input<String> productId;

  /// Sensitive Data Identification Rules of Risk Level ID. Valid values:
  final pulumi.Input<String> riskLevelId;

  /// Sensitive Data Identification Rules the Risk Level of. S1: Weak Risk Level S2: Moderate Risk Level S3: High Risk Level S4: the Highest Risk Level.
  final pulumi.Input<String> riskLevelName;

  /// The first ID of the resource.
  final pulumi.Input<String> ruleId;

  /// Triggered the Alarm Conditions.
  final pulumi.Input<String> statExpress;

  /// Sensitive Data Identification Rules Detection State of.
  final pulumi.Input<int> status;

  /// The Target.
  final pulumi.Input<String> target;

  /// The User ID.
  final pulumi.Input<String> userId;

  /// The Level of Risk. Valid values:
  final pulumi.Input<int> warnLevel;

  /// Creates a new [GetRulesRule].
  /// [category] Sensitive Data Identification Rules for the Type of. Valid values:
  /// [categoryName] Sensitive Data Identification Rules Belongs Type Name.
  /// [content] Sensitive Data Identification Rules the Content.
  /// [contentCategory] The Content Classification.
  /// [createTime] Sensitive Data Identification Rules the Creation Time of the Number of Milliseconds.
  /// [customType] Sensitive Data Identification Rules of Type. Valid values:
  /// [description] Sensitive Data Identification a Description of the Rule Information.
  /// [displayName] Sensitive Data Identification Rules, Founder of Account Display Name.
  /// [gmtModified] Sensitive Data Identification Rules to the Modified Time of the Number of Milliseconds.
  /// [id] The ID of the Rule.
  /// [loginName] Sensitive Data Identification Rules, Founder Of Account Login.
  /// [majorKey] The Primary Key.
  /// [name] The name of rule.
  /// [productCode] Product Code.
  /// [productId] Product ID. Valid values:
  /// [riskLevelId] Sensitive Data Identification Rules of Risk Level ID. Valid values:
  /// [riskLevelName] Sensitive Data Identification Rules the Risk Level of. S1: Weak Risk Level S2: Moderate Risk Level S3: High Risk Level S4: the Highest Risk Level.
  /// [ruleId] The first ID of the resource.
  /// [statExpress] Triggered the Alarm Conditions.
  /// [status] Sensitive Data Identification Rules Detection State of.
  /// [target] The Target.
  /// [userId] The User ID.
  /// [warnLevel] The Level of Risk. Valid values:
  GetRulesRule({
    required this.category,
    required this.categoryName,
    required this.content,
    required this.contentCategory,
    required this.createTime,
    required this.customType,
    required this.description,
    required this.displayName,
    required this.gmtModified,
    required this.id,
    required this.loginName,
    required this.majorKey,
    required this.name,
    required this.productCode,
    required this.productId,
    required this.riskLevelId,
    required this.riskLevelName,
    required this.ruleId,
    required this.statExpress,
    required this.status,
    required this.target,
    required this.userId,
    required this.warnLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'categoryName': categoryName,
      'content': content,
      'contentCategory': contentCategory,
      'createTime': createTime,
      'customType': customType,
      'description': description,
      'displayName': displayName,
      'gmtModified': gmtModified,
      'id': id,
      'loginName': loginName,
      'majorKey': majorKey,
      'name': name,
      'productCode': productCode,
      'productId': productId,
      'riskLevelId': riskLevelId,
      'riskLevelName': riskLevelName,
      'ruleId': ruleId,
      'statExpress': statExpress,
      'status': status,
      'target': target,
      'userId': userId,
      'warnLevel': warnLevel,
    };
  }

  factory GetRulesRule.fromMap(Map<String, dynamic> map) {
    return GetRulesRule(
      category: pulumi.Input.fromValue(map['category'] as int),
      categoryName: pulumi.Input.fromValue(map['categoryName'] as String),
      content: pulumi.Input.fromValue(map['content'] as String),
      contentCategory: pulumi.Input.fromValue(map['contentCategory'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      customType: pulumi.Input.fromValue(map['customType'] as int),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      gmtModified: pulumi.Input.fromValue(map['gmtModified'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      loginName: pulumi.Input.fromValue(map['loginName'] as String),
      majorKey: pulumi.Input.fromValue(map['majorKey'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      productCode: pulumi.Input.fromValue(map['productCode'] as String),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      riskLevelId: pulumi.Input.fromValue(map['riskLevelId'] as String),
      riskLevelName: pulumi.Input.fromValue(map['riskLevelName'] as String),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
      statExpress: pulumi.Input.fromValue(map['statExpress'] as String),
      status: pulumi.Input.fromValue(map['status'] as int),
      target: pulumi.Input.fromValue(map['target'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
      warnLevel: pulumi.Input.fromValue(map['warnLevel'] as int),
    );
  }
}

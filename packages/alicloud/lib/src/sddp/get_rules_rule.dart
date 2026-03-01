// ignore_for_file: unused_element, unnecessary_cast


class GetRulesRule {
  /// Sensitive Data Identification Rules for the Type of. Valid values:
  final int category;
  /// Sensitive Data Identification Rules Belongs Type Name.
  final String categoryName;
  /// Sensitive Data Identification Rules the Content.
  final String content;
  /// The Content Classification.
  final String contentCategory;
  /// Sensitive Data Identification Rules the Creation Time of the Number of Milliseconds.
  final String createTime;
  /// Sensitive Data Identification Rules of Type. Valid values:
  final int customType;
  /// Sensitive Data Identification a Description of the Rule Information.
  final String description;
  /// Sensitive Data Identification Rules, Founder of Account Display Name.
  final String displayName;
  /// Sensitive Data Identification Rules to the Modified Time of the Number of Milliseconds.
  final String gmtModified;
  /// The ID of the Rule.
  final String id;
  /// Sensitive Data Identification Rules, Founder Of Account Login.
  final String loginName;
  /// The Primary Key.
  final String majorKey;
  /// The name of rule.
  final String name;
  /// Product Code.
  final String productCode;
  /// Product ID. Valid values:
  final String productId;
  /// Sensitive Data Identification Rules of Risk Level ID. Valid values:
  final String riskLevelId;
  /// Sensitive Data Identification Rules the Risk Level of. S1: Weak Risk Level S2: Moderate Risk Level S3: High Risk Level S4: the Highest Risk Level.
  final String riskLevelName;
  /// The first ID of the resource.
  final String ruleId;
  /// Triggered the Alarm Conditions.
  final String statExpress;
  /// Sensitive Data Identification Rules Detection State of.
  final int status;
  /// The Target.
  final String target;
  /// The User ID.
  final String userId;
  /// The Level of Risk. Valid values:
  final int warnLevel;

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
      category: map['category'] as int,
      categoryName: map['categoryName'] as String,
      content: map['content'] as String,
      contentCategory: map['contentCategory'] as String,
      createTime: map['createTime'] as String,
      customType: map['customType'] as int,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      gmtModified: map['gmtModified'] as String,
      id: map['id'] as String,
      loginName: map['loginName'] as String,
      majorKey: map['majorKey'] as String,
      name: map['name'] as String,
      productCode: map['productCode'] as String,
      productId: map['productId'] as String,
      riskLevelId: map['riskLevelId'] as String,
      riskLevelName: map['riskLevelName'] as String,
      ruleId: map['ruleId'] as String,
      statExpress: map['statExpress'] as String,
      status: map['status'] as int,
      target: map['target'] as String,
      userId: map['userId'] as String,
      warnLevel: map['warnLevel'] as int,
    );
  }
}


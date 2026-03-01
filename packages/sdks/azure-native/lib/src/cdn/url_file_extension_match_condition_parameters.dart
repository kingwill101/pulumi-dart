// ignore_for_file: unused_element, unnecessary_cast


/// Defines the parameters for UrlFileExtension match conditions
class UrlFileExtensionMatchConditionParameters {
  /// The match value for the condition of the delivery rule
  final List<String>? matchValues;
  /// Describes if this is negate condition or not
  final bool? negateCondition;
  /// Describes operator to be matched
  final String operator;
  /// List of transforms
  final List<String>? transforms;
  /// Expected value is 'DeliveryRuleUrlFileExtensionMatchConditionParameters'.
  final String typeName;

  /// Creates a new [UrlFileExtensionMatchConditionParameters].
  /// [matchValues] The match value for the condition of the delivery rule
  /// [negateCondition] Describes if this is negate condition or not
  /// [operator] Describes operator to be matched
  /// [transforms] List of transforms
  /// [typeName] Expected value is 'DeliveryRuleUrlFileExtensionMatchConditionParameters'.
  UrlFileExtensionMatchConditionParameters({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    this.transforms,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': ?matchValues,
      'negateCondition': ?negateCondition,
      'operator': operator,
      'transforms': ?transforms,
      'typeName': typeName,
    };
  }

  factory UrlFileExtensionMatchConditionParameters.fromMap(Map<String, dynamic> map) {
    return UrlFileExtensionMatchConditionParameters(
      matchValues: map['matchValues'] == null ? null : (map['matchValues'] as List).cast<String>(),
      negateCondition: map['negateCondition'] == null ? null : map['negateCondition'] as bool,
      operator: map['operator'] as String,
      transforms: map['transforms'] == null ? null : (map['transforms'] as List).cast<String>(),
      typeName: map['typeName'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// Defines the parameters for RequestHeader match conditions
class RequestHeaderMatchConditionParametersResponse {
  /// The match value for the condition of the delivery rule
  final List<String>? matchValues;
  /// Describes if this is negate condition or not
  final bool? negateCondition;
  /// Describes operator to be matched
  final String operator;
  /// Name of Header to be matched
  final String? selector;
  /// List of transforms
  final List<String>? transforms;
  /// Expected value is 'DeliveryRuleRequestHeaderConditionParameters'.
  final String typeName;

  /// Creates a new [RequestHeaderMatchConditionParametersResponse].
  /// [matchValues] The match value for the condition of the delivery rule
  /// [negateCondition] Describes if this is negate condition or not
  /// [operator] Describes operator to be matched
  /// [selector] Name of Header to be matched
  /// [transforms] List of transforms
  /// [typeName] Expected value is 'DeliveryRuleRequestHeaderConditionParameters'.
  RequestHeaderMatchConditionParametersResponse({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    this.selector,
    this.transforms,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': ?matchValues,
      'negateCondition': ?negateCondition,
      'operator': operator,
      'selector': ?selector,
      'transforms': ?transforms,
      'typeName': typeName,
    };
  }

  factory RequestHeaderMatchConditionParametersResponse.fromMap(Map<String, dynamic> map) {
    return RequestHeaderMatchConditionParametersResponse(
      matchValues: map['matchValues'] == null ? null : (map['matchValues'] as List).cast<String>(),
      negateCondition: map['negateCondition'] == null ? null : map['negateCondition'] as bool,
      operator: map['operator'] as String,
      selector: map['selector'] == null ? null : map['selector'] as String,
      transforms: map['transforms'] == null ? null : (map['transforms'] as List).cast<String>(),
      typeName: map['typeName'] as String,
    );
  }
}


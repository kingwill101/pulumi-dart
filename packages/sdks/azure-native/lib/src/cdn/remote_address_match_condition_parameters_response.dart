// ignore_for_file: unused_element, unnecessary_cast


/// Defines the parameters for RemoteAddress match conditions
class RemoteAddressMatchConditionParametersResponse {
  /// Match values to match against. The operator will apply to each value in here with OR semantics. If any of them match the variable with the given operator this match condition is considered a match.
  final List<String>? matchValues;
  /// Describes if this is negate condition or not
  final bool? negateCondition;
  /// Describes operator to be matched
  final String operator;
  /// List of transforms
  final List<String>? transforms;
  /// Expected value is 'DeliveryRuleRemoteAddressConditionParameters'.
  final String typeName;

  /// Creates a new [RemoteAddressMatchConditionParametersResponse].
  /// [matchValues] Match values to match against. The operator will apply to each value in here with OR semantics. If any of them match the variable with the given operator this match condition is considered a match.
  /// [negateCondition] Describes if this is negate condition or not
  /// [operator] Describes operator to be matched
  /// [transforms] List of transforms
  /// [typeName] Expected value is 'DeliveryRuleRemoteAddressConditionParameters'.
  RemoteAddressMatchConditionParametersResponse({
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

  factory RemoteAddressMatchConditionParametersResponse.fromMap(Map<String, dynamic> map) {
    return RemoteAddressMatchConditionParametersResponse(
      matchValues: map['matchValues'] == null ? null : (map['matchValues'] as List).cast<String>(),
      negateCondition: map['negateCondition'] == null ? null : map['negateCondition'] as bool,
      operator: map['operator'] as String,
      transforms: map['transforms'] == null ? null : (map['transforms'] as List).cast<String>(),
      typeName: map['typeName'] as String,
    );
  }
}


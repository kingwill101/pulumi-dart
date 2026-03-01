// ignore_for_file: unused_element, unnecessary_cast


class EndpointDeliveryRuleUrlFileNameCondition {
  /// List of string values. This is required if `operator` is not `Any`.
  final List<String>? matchValues;
  /// Defaults to `false`.
  final bool? negateCondition;
  /// Valid values are `Any`, `BeginsWith`, `Contains`, `EndsWith`, `Equal`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan` and `LessThanOrEqual`.
  final String operator;
  /// A list of transforms. Valid values are `Lowercase` and `Uppercase`.
  final List<String>? transforms;

  /// Creates a new [EndpointDeliveryRuleUrlFileNameCondition].
  /// [matchValues] List of string values. This is required if `operator` is not `Any`.
  /// [negateCondition] Defaults to `false`.
  /// [operator] Valid values are `Any`, `BeginsWith`, `Contains`, `EndsWith`, `Equal`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan` and `LessThanOrEqual`.
  /// [transforms] A list of transforms. Valid values are `Lowercase` and `Uppercase`.
  EndpointDeliveryRuleUrlFileNameCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': ?matchValues,
      'negateCondition': ?negateCondition,
      'operator': operator,
      'transforms': ?transforms,
    };
  }

  factory EndpointDeliveryRuleUrlFileNameCondition.fromMap(Map<String, dynamic> map) {
    return EndpointDeliveryRuleUrlFileNameCondition(
      matchValues: map['matchValues'] == null ? null : (map['matchValues'] as List).cast<String>(),
      negateCondition: map['negateCondition'] == null ? null : map['negateCondition'] as bool,
      operator: map['operator'] as String,
      transforms: map['transforms'] == null ? null : (map['transforms'] as List).cast<String>(),
    );
  }
}


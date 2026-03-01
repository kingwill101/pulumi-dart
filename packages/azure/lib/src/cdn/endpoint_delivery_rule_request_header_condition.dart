// ignore_for_file: unused_element, unnecessary_cast


class EndpointDeliveryRuleRequestHeaderCondition {
  /// List of header values. This is required if `operator` is not `Any`.
  final List<String>? matchValues;
  /// Defaults to `false`.
  final bool? negateCondition;
  /// Valid values are `Any`, `BeginsWith`, `Contains`, `EndsWith`, `Equal`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan` and `LessThanOrEqual`.
  final String operator;
  /// Header name.
  final String selector;
  /// A list of transforms. Valid values are `Lowercase` and `Uppercase`.
  final List<String>? transforms;

  /// Creates a new [EndpointDeliveryRuleRequestHeaderCondition].
  /// [matchValues] List of header values. This is required if `operator` is not `Any`.
  /// [negateCondition] Defaults to `false`.
  /// [operator] Valid values are `Any`, `BeginsWith`, `Contains`, `EndsWith`, `Equal`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan` and `LessThanOrEqual`.
  /// [selector] Header name.
  /// [transforms] A list of transforms. Valid values are `Lowercase` and `Uppercase`.
  EndpointDeliveryRuleRequestHeaderCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    required this.selector,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': ?matchValues,
      'negateCondition': ?negateCondition,
      'operator': operator,
      'selector': selector,
      'transforms': ?transforms,
    };
  }

  factory EndpointDeliveryRuleRequestHeaderCondition.fromMap(Map<String, dynamic> map) {
    return EndpointDeliveryRuleRequestHeaderCondition(
      matchValues: map['matchValues'] == null ? null : (map['matchValues'] as List).cast<String>(),
      negateCondition: map['negateCondition'] == null ? null : map['negateCondition'] as bool,
      operator: map['operator'] as String,
      selector: map['selector'] as String,
      transforms: map['transforms'] == null ? null : (map['transforms'] as List).cast<String>(),
    );
  }
}


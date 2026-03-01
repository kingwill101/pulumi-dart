// ignore_for_file: unused_element, unnecessary_cast


class EndpointDeliveryRuleRequestSchemeCondition {
  /// Valid values are `HTTP` and `HTTPS`.
  final List<String> matchValues;
  /// Defaults to `false`.
  final bool? negateCondition;
  /// Valid values are `Equal`. Defaults to `Equal`.
  final String? operator;

  /// Creates a new [EndpointDeliveryRuleRequestSchemeCondition].
  /// [matchValues] Valid values are `HTTP` and `HTTPS`.
  /// [negateCondition] Defaults to `false`.
  /// [operator] Valid values are `Equal`. Defaults to `Equal`.
  EndpointDeliveryRuleRequestSchemeCondition({
    required this.matchValues,
    this.negateCondition,
    this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': matchValues,
      'negateCondition': ?negateCondition,
      'operator': ?operator,
    };
  }

  factory EndpointDeliveryRuleRequestSchemeCondition.fromMap(Map<String, dynamic> map) {
    return EndpointDeliveryRuleRequestSchemeCondition(
      matchValues: (map['matchValues'] as List).cast<String>(),
      negateCondition: map['negateCondition'] == null ? null : map['negateCondition'] as bool,
      operator: map['operator'] == null ? null : map['operator'] as String,
    );
  }
}


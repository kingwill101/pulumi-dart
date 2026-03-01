// ignore_for_file: unused_element, unnecessary_cast


class EndpointDeliveryRuleRequestMethodCondition {
  /// Valid values are `DELETE`, `GET`, `HEAD`, `OPTIONS`, `POST` and `PUT`.
  final List<String> matchValues;
  /// Defaults to `false`.
  final bool? negateCondition;
  /// Valid values are `Equal`. Defaults to `Equal`.
  final String? operator;

  /// Creates a new [EndpointDeliveryRuleRequestMethodCondition].
  /// [matchValues] Valid values are `DELETE`, `GET`, `HEAD`, `OPTIONS`, `POST` and `PUT`.
  /// [negateCondition] Defaults to `false`.
  /// [operator] Valid values are `Equal`. Defaults to `Equal`.
  EndpointDeliveryRuleRequestMethodCondition({
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

  factory EndpointDeliveryRuleRequestMethodCondition.fromMap(Map<String, dynamic> map) {
    return EndpointDeliveryRuleRequestMethodCondition(
      matchValues: (map['matchValues'] as List).cast<String>(),
      negateCondition: map['negateCondition'] == null ? null : map['negateCondition'] as bool,
      operator: map['operator'] == null ? null : map['operator'] as String,
    );
  }
}


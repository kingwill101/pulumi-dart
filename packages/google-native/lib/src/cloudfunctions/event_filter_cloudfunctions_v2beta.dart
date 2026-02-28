// ignore_for_file: unused_element, unnecessary_cast

/// Filters events based on exact matches on the CloudEvents attributes.
class EventFilterCloudfunctionsV2beta {
  /// The name of a CloudEvents attribute.
  final String attribute;

  /// Optional. The operator used for matching the events with the value of the filter. If not specified, only events that have an exact key-value pair specified in the filter are matched. The only allowed value is `match-path-pattern`.
  final String? operator;

  /// The value for the attribute.
  final String value;

  /// Creates a new [EventFilterCloudfunctionsV2beta].
  /// [attribute] The name of a CloudEvents attribute.
  /// [operator] Optional. The operator used for matching the events with the value of the filter. If not specified, only events that have an exact key-value pair specified in the filter are matched. The only allowed value is `match-path-pattern`.
  /// [value] The value for the attribute.
  EventFilterCloudfunctionsV2beta({
    required this.attribute,
    this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attribute'] = attribute;
    final operatorValue = operator;
    if (operatorValue != null) {
      map['operator'] = operatorValue;
    }
    map['value'] = value;
    return map;
  }

  factory EventFilterCloudfunctionsV2beta.fromMap(Map<String, dynamic> map) {
    return EventFilterCloudfunctionsV2beta(
      attribute: map['attribute'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      value: map['value'] as String,
    );
  }
}

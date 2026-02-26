// ignore_for_file: unused_element, unnecessary_cast

/// Filters events based on exact matches on the CloudEvents attributes.
class EventFilterResponse2 {
  /// The name of a CloudEvents attribute.
  final String attribute;

  /// Optional. The operator used for matching the events with the value of the filter. If not specified, only events that have an exact key-value pair specified in the filter are matched. The only allowed value is `match-path-pattern`.
  final String operator;

  /// The value for the attribute.
  final String value;

  EventFilterResponse2({
    required this.attribute,
    required this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attribute'] = attribute;
    map['operator'] = operator;
    map['value'] = value;
    return map;
  }

  factory EventFilterResponse2.fromMap(Map<String, dynamic> map) {
    return EventFilterResponse2(
      attribute: map['attribute'] as String,
      operator: map['operator'] as String,
      value: map['value'] as String,
    );
  }
}

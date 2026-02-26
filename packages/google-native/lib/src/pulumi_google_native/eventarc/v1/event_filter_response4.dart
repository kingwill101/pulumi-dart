// ignore_for_file: unused_element, unnecessary_cast

/// Filters events based on exact matches on the CloudEvents attributes.
class EventFilterResponse4 {
  /// The name of a CloudEvents attribute. Currently, only a subset of attributes are supported for filtering. You can [retrieve a specific provider's supported event types](/eventarc/docs/list-providers#describe-provider). All triggers MUST provide a filter for the 'type' attribute.
  final String attribute;

  /// Optional. The operator used for matching the events with the value of the filter. If not specified, only events that have an exact key-value pair specified in the filter are matched. The allowed values are `path_pattern` and `match-path-pattern`. `path_pattern` is only allowed for GCFv1 triggers.
  final String operator;

  /// The value for the attribute.
  final String value;

  EventFilterResponse4({
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

  factory EventFilterResponse4.fromMap(Map<String, dynamic> map) {
    return EventFilterResponse4(
      attribute: map['attribute'] as String,
      operator: map['operator'] as String,
      value: map['value'] as String,
    );
  }
}

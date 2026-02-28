// ignore_for_file: unused_element, unnecessary_cast

class GetFunctionEventTriggerEventFilter {
  /// 'Required. The name of a CloudEvents attribute.
  /// Currently, only a subset of attributes are supported for filtering. Use the 'gcloud eventarc providers describe' command to learn more about events and their attributes.
  /// Do not filter for the 'type' attribute here, as this is already achieved by the resource's 'event_type' attribute.
  final String attribute;

  /// Optional. The operator used for matching the events with the value of
  /// the filter. If not specified, only events that have an exact key-value
  /// pair specified in the filter are matched.
  /// The only allowed value is 'match-path-pattern'.
  /// [See documentation on path patterns here](https://cloud.google.com/eventarc/docs/path-patterns)'
  final String operator;

  /// Required. The value for the attribute.
  /// If the operator field is set as 'match-path-pattern', this value can be a path pattern instead of an exact value.
  final String value;

  /// Creates a new [GetFunctionEventTriggerEventFilter].
  /// [attribute] 'Required. The name of a CloudEvents attribute.
  /// [operator] Optional. The operator used for matching the events with the value of
  /// [value] Required. The value for the attribute.
  GetFunctionEventTriggerEventFilter({
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

  factory GetFunctionEventTriggerEventFilter.fromMap(Map<String, dynamic> map) {
    return GetFunctionEventTriggerEventFilter(
      attribute: map['attribute'] as String,
      operator: map['operator'] as String,
      value: map['value'] as String,
    );
  }
}

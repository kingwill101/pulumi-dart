// ignore_for_file: unused_element, unnecessary_cast


class EventSubscriptionAdvancedFilterNumberGreaterThanOrEqual {
  /// Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  final String key;
  final double value;

  /// Creates a new [EventSubscriptionAdvancedFilterNumberGreaterThanOrEqual].
  /// [key] Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  /// [value] Required.
  EventSubscriptionAdvancedFilterNumberGreaterThanOrEqual({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory EventSubscriptionAdvancedFilterNumberGreaterThanOrEqual.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionAdvancedFilterNumberGreaterThanOrEqual(
      key: map['key'] as String,
      value: map['value'] as double,
    );
  }
}


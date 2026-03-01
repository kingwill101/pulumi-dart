// ignore_for_file: unused_element, unnecessary_cast


class EventSubscriptionAdvancedFilterNumberLessThanOrEqual {
  /// Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  final String key;
  final double value;

  /// Creates a new [EventSubscriptionAdvancedFilterNumberLessThanOrEqual].
  /// [key] Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  /// [value] Required.
  EventSubscriptionAdvancedFilterNumberLessThanOrEqual({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory EventSubscriptionAdvancedFilterNumberLessThanOrEqual.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionAdvancedFilterNumberLessThanOrEqual(
      key: map['key'] as String,
      value: map['value'] as double,
    );
  }
}


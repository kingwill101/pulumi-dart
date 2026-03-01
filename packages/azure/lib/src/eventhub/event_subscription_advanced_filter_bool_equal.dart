// ignore_for_file: unused_element, unnecessary_cast


class EventSubscriptionAdvancedFilterBoolEqual {
  /// Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  final String key;
  final bool value;

  /// Creates a new [EventSubscriptionAdvancedFilterBoolEqual].
  /// [key] Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  /// [value] Required.
  EventSubscriptionAdvancedFilterBoolEqual({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory EventSubscriptionAdvancedFilterBoolEqual.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionAdvancedFilterBoolEqual(
      key: map['key'] as String,
      value: map['value'] as bool,
    );
  }
}


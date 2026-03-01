// ignore_for_file: unused_element, unnecessary_cast


class SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThanOrEqual {
  /// Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  final String key;
  final double value;

  /// Creates a new [SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThanOrEqual].
  /// [key] Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  /// [value] Required.
  SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThanOrEqual({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThanOrEqual.fromMap(Map<String, dynamic> map) {
    return SystemTopicEventSubscriptionAdvancedFilterNumberGreaterThanOrEqual(
      key: map['key'] as String,
      value: map['value'] as double,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class SystemTopicEventSubscriptionAdvancedFilterBoolEqual {
  /// Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  final String key;
  final bool value;

  /// Creates a new [SystemTopicEventSubscriptionAdvancedFilterBoolEqual].
  /// [key] Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  /// [value] Required.
  SystemTopicEventSubscriptionAdvancedFilterBoolEqual({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory SystemTopicEventSubscriptionAdvancedFilterBoolEqual.fromMap(Map<String, dynamic> map) {
    return SystemTopicEventSubscriptionAdvancedFilterBoolEqual(
      key: map['key'] as String,
      value: map['value'] as bool,
    );
  }
}


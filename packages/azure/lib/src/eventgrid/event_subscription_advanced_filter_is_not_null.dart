// ignore_for_file: unused_element, unnecessary_cast


class EventSubscriptionAdvancedFilterIsNotNull {
  /// Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  final String key;

  /// Creates a new [EventSubscriptionAdvancedFilterIsNotNull].
  /// [key] Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  EventSubscriptionAdvancedFilterIsNotNull({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
    };
  }

  factory EventSubscriptionAdvancedFilterIsNotNull.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionAdvancedFilterIsNotNull(
      key: map['key'] as String,
    );
  }
}


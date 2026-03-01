// ignore_for_file: unused_element, unnecessary_cast


class EventSubscriptionAdvancedFilterIsNullOrUndefined {
  /// Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  final String key;

  /// Creates a new [EventSubscriptionAdvancedFilterIsNullOrUndefined].
  /// [key] Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  EventSubscriptionAdvancedFilterIsNullOrUndefined({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
    };
  }

  factory EventSubscriptionAdvancedFilterIsNullOrUndefined.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionAdvancedFilterIsNullOrUndefined(
      key: map['key'] as String,
    );
  }
}


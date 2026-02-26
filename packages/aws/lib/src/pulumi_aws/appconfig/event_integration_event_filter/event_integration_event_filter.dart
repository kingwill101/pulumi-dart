// ignore_for_file: unused_element, unnecessary_cast

class EventIntegrationEventFilter {
  /// Source of the events.
  final String source;

  EventIntegrationEventFilter({
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['source'] = source;
    return map;
  }

  factory EventIntegrationEventFilter.fromMap(Map<String, dynamic> map) {
    return EventIntegrationEventFilter(
      source: map['source'] as String,
    );
  }
}

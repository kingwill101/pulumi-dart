// ignore_for_file: unused_element, unnecessary_cast


class EventIntegrationEventFilter {
  /// Source of the events.
  final String source;

  /// Creates a new [EventIntegrationEventFilter].
  /// [source] Source of the events.
  EventIntegrationEventFilter({
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': source,
    };
  }

  factory EventIntegrationEventFilter.fromMap(Map<String, dynamic> map) {
    return EventIntegrationEventFilter(
      source: map['source'] as String,
    );
  }
}


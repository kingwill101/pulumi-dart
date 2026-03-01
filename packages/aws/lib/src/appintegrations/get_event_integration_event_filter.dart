// ignore_for_file: unused_element, unnecessary_cast


class GetEventIntegrationEventFilter {
  /// The source of the events.
  final String source;

  /// Creates a new [GetEventIntegrationEventFilter].
  /// [source] The source of the events.
  GetEventIntegrationEventFilter({
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': source,
    };
  }

  factory GetEventIntegrationEventFilter.fromMap(Map<String, dynamic> map) {
    return GetEventIntegrationEventFilter(
      source: map['source'] as String,
    );
  }
}


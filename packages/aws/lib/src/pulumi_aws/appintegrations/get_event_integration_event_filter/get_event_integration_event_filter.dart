// ignore_for_file: unused_element, unnecessary_cast

class GetEventIntegrationEventFilter {
  /// The source of the events.
  final String source;

  GetEventIntegrationEventFilter({
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['source'] = source;
    return map;
  }

  factory GetEventIntegrationEventFilter.fromMap(Map<String, dynamic> map) {
    return GetEventIntegrationEventFilter(
      source: map['source'] as String,
    );
  }
}

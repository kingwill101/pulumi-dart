// ignore_for_file: unused_element, unnecessary_cast

class EventSourceMappingSelfManagedEventSource {
  /// Map of endpoints for the self managed source. For Kafka self-managed sources, the key should be `KAFKA_BOOTSTRAP_SERVERS` and the value should be a string with a comma separated list of broker endpoints.
  final Map<String, String> endpoints;

  EventSourceMappingSelfManagedEventSource({
    required this.endpoints,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpoints'] = endpoints;
    return map;
  }

  factory EventSourceMappingSelfManagedEventSource.fromMap(
      Map<String, dynamic> map) {
    return EventSourceMappingSelfManagedEventSource(
      endpoints: (map['endpoints'] as Map).cast<String, String>(),
    );
  }
}

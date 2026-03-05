// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSourceMappingSelfManagedEventSource {
  /// Map of endpoints for the self managed source. For Kafka self-managed sources, the key should be `KAFKA_BOOTSTRAP_SERVERS` and the value should be a string with a comma separated list of broker endpoints.
  final pulumi.Input<Map<String, String>> endpoints;

  /// Creates a new [EventSourceMappingSelfManagedEventSource].
  /// [endpoints] Map of endpoints for the self managed source. For Kafka self-managed sources, the key should be `KAFKA_BOOTSTRAP_SERVERS` and the value should be a string with a comma separated list of broker endpoints.
  EventSourceMappingSelfManagedEventSource({
    required this.endpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': endpoints,
    };
  }

  factory EventSourceMappingSelfManagedEventSource.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingSelfManagedEventSource(
      endpoints: pulumi.Input.fromValue((map['endpoints'] as Map).cast<String, String>()),
    );
  }
}


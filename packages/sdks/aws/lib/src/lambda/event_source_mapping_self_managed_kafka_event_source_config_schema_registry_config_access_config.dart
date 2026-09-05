// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig {
  final pulumi.Input<String?>? type;
  final pulumi.Input<String?>? uri;

  /// Creates a new [EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig].
  /// [type] Optional.
  /// [uri] Optional.
  const EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig({
    this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'uri': ?uri,
    };
  }

  factory EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

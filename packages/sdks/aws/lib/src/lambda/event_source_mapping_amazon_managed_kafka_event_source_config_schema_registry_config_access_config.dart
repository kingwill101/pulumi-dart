// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig {
  final pulumi.Input<String?>? type;
  final pulumi.Input<String?>? uri;

  /// Creates a new [EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig].
  /// [type] Optional.
  /// [uri] Optional.
  const EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig({
    this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'uri': ?uri,
    };
  }

  factory EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

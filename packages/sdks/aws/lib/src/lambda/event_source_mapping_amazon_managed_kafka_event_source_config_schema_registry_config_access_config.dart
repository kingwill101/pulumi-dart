// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig {
  /// Authentication type Lambda uses to access the schema registry.
  final pulumi.Input<String>? type;
  /// URI of the secret (Secrets Manager secret ARN) used to authenticate with the schema registry.
  final pulumi.Input<String>? uri;

  /// Creates a new [EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig].
  /// [type] Authentication type Lambda uses to access the schema registry.
  /// [uri] URI of the secret (Secrets Manager secret ARN) used to authenticate with the schema registry.
  EventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig({
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
      type: map['type'] == null ? null : (map['type'] as String).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}


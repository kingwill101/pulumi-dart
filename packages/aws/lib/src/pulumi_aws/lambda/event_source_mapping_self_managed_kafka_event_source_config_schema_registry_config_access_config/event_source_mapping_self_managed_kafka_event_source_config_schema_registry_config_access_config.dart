// ignore_for_file: unused_element, unnecessary_cast

class EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig {
  /// Authentication type Lambda uses to access the schema registry.
  final String? type;

  /// URI of the secret (Secrets Manager secret ARN) used to authenticate with the schema registry.
  final String? uri;

  EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig({
    this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig.fromMap(
      Map<String, dynamic> map) {
    return EventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig(
      type: map['type'] == null ? null : map['type'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

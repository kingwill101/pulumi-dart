// ignore_for_file: unused_element, unnecessary_cast


/// Defines the message schema reference properties.
class MessageSchemaReferenceResponse {
  /// The message schema name.
  final String schemaName;
  /// The message schema registry namespace.
  final String schemaRegistryNamespace;
  /// The message schema version.
  final String schemaVersion;

  /// Creates a new [MessageSchemaReferenceResponse].
  /// [schemaName] The message schema name.
  /// [schemaRegistryNamespace] The message schema registry namespace.
  /// [schemaVersion] The message schema version.
  MessageSchemaReferenceResponse({
    required this.schemaName,
    required this.schemaRegistryNamespace,
    required this.schemaVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaName': schemaName,
      'schemaRegistryNamespace': schemaRegistryNamespace,
      'schemaVersion': schemaVersion,
    };
  }

  factory MessageSchemaReferenceResponse.fromMap(Map<String, dynamic> map) {
    return MessageSchemaReferenceResponse(
      schemaName: map['schemaName'] as String,
      schemaRegistryNamespace: map['schemaRegistryNamespace'] as String,
      schemaVersion: map['schemaVersion'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// Defines the message schema reference properties.
class NamespaceMessageSchemaReferenceResponse {
  /// The message schema name.
  final String schemaName;
  /// The message schema registry namespace.
  final String schemaRegistryNamespace;
  /// The message schema version.
  final String schemaVersion;

  /// Creates a new [NamespaceMessageSchemaReferenceResponse].
  /// [schemaName] The message schema name.
  /// [schemaRegistryNamespace] The message schema registry namespace.
  /// [schemaVersion] The message schema version.
  NamespaceMessageSchemaReferenceResponse({
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

  factory NamespaceMessageSchemaReferenceResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceMessageSchemaReferenceResponse(
      schemaName: map['schemaName'] as String,
      schemaRegistryNamespace: map['schemaRegistryNamespace'] as String,
      schemaVersion: map['schemaVersion'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the message schema reference properties.
class MessageSchemaReferenceResponse {
  /// The message schema name.
  final pulumi.Input<String> schemaName;
  /// The message schema registry namespace.
  final pulumi.Input<String> schemaRegistryNamespace;
  /// The message schema version.
  final pulumi.Input<String> schemaVersion;

  /// Creates a new [MessageSchemaReferenceResponse].
  /// [schemaName] The message schema name.
  /// [schemaRegistryNamespace] The message schema registry namespace.
  /// [schemaVersion] The message schema version.
  const MessageSchemaReferenceResponse({
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
      schemaName: pulumi.Input.fromValue(map['schemaName'] as String),
      schemaRegistryNamespace: pulumi.Input.fromValue(map['schemaRegistryNamespace'] as String),
      schemaVersion: pulumi.Input.fromValue(map['schemaVersion'] as String),
    );
  }
}

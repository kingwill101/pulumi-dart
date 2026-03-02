// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the message schema reference properties.
class NamespaceMessageSchemaReferenceResponse {
  /// The message schema name.
  final pulumi.Input<String> schemaName;
  /// The message schema registry namespace.
  final pulumi.Input<String> schemaRegistryNamespace;
  /// The message schema version.
  final pulumi.Input<String> schemaVersion;

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
      schemaName: (map['schemaName'] as String).input(),
      schemaRegistryNamespace: (map['schemaRegistryNamespace'] as String).input(),
      schemaVersion: (map['schemaVersion'] as String).input(),
    );
  }
}


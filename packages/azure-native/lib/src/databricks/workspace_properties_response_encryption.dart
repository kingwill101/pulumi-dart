// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_entities_definition_response.dart';

/// Encryption properties for databricks workspace
class WorkspacePropertiesResponseEncryption {
  /// Encryption entities definition for the workspace.
  final EncryptionEntitiesDefinitionResponse entities;

  /// Creates a new [WorkspacePropertiesResponseEncryption].
  /// [entities] Encryption entities definition for the workspace.
  WorkspacePropertiesResponseEncryption({
    required this.entities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entities': entities.toMap(),
    };
  }

  factory WorkspacePropertiesResponseEncryption.fromMap(Map<String, dynamic> map) {
    return WorkspacePropertiesResponseEncryption(
      entities: EncryptionEntitiesDefinitionResponse.fromMap((map['entities'] as Map).cast<String, dynamic>()),
    );
  }
}


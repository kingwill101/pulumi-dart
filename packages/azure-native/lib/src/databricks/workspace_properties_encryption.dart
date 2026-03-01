// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_entities_definition.dart';

/// Encryption properties for databricks workspace
class WorkspacePropertiesEncryption {
  /// Encryption entities definition for the workspace.
  final EncryptionEntitiesDefinition entities;

  /// Creates a new [WorkspacePropertiesEncryption].
  /// [entities] Encryption entities definition for the workspace.
  WorkspacePropertiesEncryption({
    required this.entities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entities': entities.toMap(),
    };
  }

  factory WorkspacePropertiesEncryption.fromMap(Map<String, dynamic> map) {
    return WorkspacePropertiesEncryption(
      entities: EncryptionEntitiesDefinition.fromMap((map['entities'] as Map).cast<String, dynamic>()),
    );
  }
}


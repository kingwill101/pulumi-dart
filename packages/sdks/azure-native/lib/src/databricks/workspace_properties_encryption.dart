// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_entities_definition.dart';

/// Encryption properties for databricks workspace
class WorkspacePropertiesEncryption {
  /// Encryption entities definition for the workspace.
  final pulumi.Input<EncryptionEntitiesDefinition> entities;

  /// Creates a new [WorkspacePropertiesEncryption].
  /// [entities] Encryption entities definition for the workspace.
  const WorkspacePropertiesEncryption({
    required this.entities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entities': pulumi.Input.mapInputValue<EncryptionEntitiesDefinition, Map<String, dynamic>>(entities, (value) => value.toMap()),
    };
  }

  factory WorkspacePropertiesEncryption.fromMap(Map<String, dynamic> map) {
    return WorkspacePropertiesEncryption(
      entities: pulumi.Input.fromValue(EncryptionEntitiesDefinition.fromMap((map['entities']! as Map).cast<String, dynamic>())),
    );
  }
}


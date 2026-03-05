// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_entities_definition_response.dart';

/// Encryption properties for databricks workspace
class WorkspacePropertiesResponseEncryption {
  /// Encryption entities definition for the workspace.
  final pulumi.Input<EncryptionEntitiesDefinitionResponse> entities;

  /// Creates a new [WorkspacePropertiesResponseEncryption].
  /// [entities] Encryption entities definition for the workspace.
  WorkspacePropertiesResponseEncryption({
    required this.entities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entities': pulumi.Input.mapInputValue<EncryptionEntitiesDefinitionResponse, Map<String, dynamic>>(entities, (value) => value.toMap()),
    };
  }

  factory WorkspacePropertiesResponseEncryption.fromMap(Map<String, dynamic> map) {
    return WorkspacePropertiesResponseEncryption(
      entities: pulumi.Input.fromValue(EncryptionEntitiesDefinitionResponse.fromMap((map['entities']! as Map).cast<String, dynamic>())),
    );
  }
}


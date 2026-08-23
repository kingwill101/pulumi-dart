// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_entities_definition_response.dart';

/// Encryption properties for databricks workspace. Supported in both Serverless and Hybrid ComputeMode workspace.
class WorkspacePropertiesEncryptionResponse {
  /// Encryption entities definition for the workspace.
  final pulumi.Input<EncryptionEntitiesDefinitionResponse> entities;

  /// Creates a new [WorkspacePropertiesEncryptionResponse].
  /// [entities] Encryption entities definition for the workspace.
  const WorkspacePropertiesEncryptionResponse({
    required this.entities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entities': pulumi.Input.mapInputValue<EncryptionEntitiesDefinitionResponse, Map<String, dynamic>>(entities, (value) => value.toMap()),
    };
  }

  factory WorkspacePropertiesEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return WorkspacePropertiesEncryptionResponse(
      entities: pulumi.Input.fromValue(EncryptionEntitiesDefinitionResponse.fromMap((map['entities']! as Map).cast<String, dynamic>())),
    );
  }
}

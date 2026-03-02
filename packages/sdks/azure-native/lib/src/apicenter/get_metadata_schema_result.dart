// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_assignment_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMetadataSchema.
class GetMetadataSchemaResult {
  /// The assignees
  final List<MetadataAssignmentResponse>? assignedTo;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The schema defining the type.
  final String schema;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetMetadataSchemaResult].
  /// [assignedTo] The assignees
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [schema] The schema defining the type.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetMetadataSchemaResult({
    this.assignedTo,
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.schema,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedTo': ?assignedTo == null ? null : pulumi.Input.encodeList<MetadataAssignmentResponse, Map<String, dynamic>>(assignedTo!, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'schema': schema,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetMetadataSchemaResult.fromMap(Map<String, dynamic> map) {
    return GetMetadataSchemaResult(
      assignedTo: map['assignedTo'] == null ? null : pulumi.Input.decodeList<MetadataAssignmentResponse>(map['assignedTo']!, (value) => MetadataAssignmentResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      schema: map['schema'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}


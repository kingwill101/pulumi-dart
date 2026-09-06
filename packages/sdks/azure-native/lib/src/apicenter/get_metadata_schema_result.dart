// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_assignment_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMetadataSchema.
class GetMetadataSchemaResult {
  /// The assignees
  final List<MetadataAssignmentResponse>? assignedTo;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The schema defining the type.
  final String? schema;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetMetadataSchemaResult].
  /// [assignedTo] The assignees
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [schema] The schema defining the type.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetMetadataSchemaResult({
    this.assignedTo,
    this.azureApiVersion,
    this.id,
    this.name,
    this.schema,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedTo': ?(() { final guardedValue = assignedTo; if (guardedValue == null) return null; return pulumi.Input.encodeList<MetadataAssignmentResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'schema': ?schema,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetMetadataSchemaResult.fromMap(Map<String, dynamic> map) {
    return GetMetadataSchemaResult(
      assignedTo: (() { final guardedValue = map['assignedTo']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MetadataAssignmentResponse>(guardedValue, (value) => MetadataAssignmentResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

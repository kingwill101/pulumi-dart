// ignore_for_file: unused_element, unnecessary_cast

import 'connection_type_association_property_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConnection.
class GetConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the connectionType of the connection.
  final ConnectionTypeAssociationPropertyResponse? connectionType;
  /// Gets the creation time.
  final String creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Gets the field definition values of the connection.
  final Map<String, String> fieldDefinitionValues;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Gets the last modified time.
  final String lastModifiedTime;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectionType] Gets or sets the connectionType of the connection.
  /// [creationTime] Gets the creation time.
  /// [description] Gets or sets the description.
  /// [fieldDefinitionValues] Gets the field definition values of the connection.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastModifiedTime] Gets the last modified time.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetConnectionResult({
    required this.azureApiVersion,
    this.connectionType,
    required this.creationTime,
    this.description,
    required this.fieldDefinitionValues,
    required this.id,
    required this.lastModifiedTime,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'connectionType': ?connectionType?.toMap(),
      'creationTime': creationTime,
      'description': ?description,
      'fieldDefinitionValues': fieldDefinitionValues,
      'id': id,
      'lastModifiedTime': lastModifiedTime,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      connectionType: (() { final guardedValue = map['connectionType']; if (guardedValue == null) return null; return ConnectionTypeAssociationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      creationTime: map['creationTime'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fieldDefinitionValues: (map['fieldDefinitionValues'] as Map).cast<String, String>(),
      id: map['id'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

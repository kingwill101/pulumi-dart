// ignore_for_file: unused_element, unnecessary_cast

import 'connection_type_association_property_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConnection.
class GetConnectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets or sets the connectionType of the connection.
  final ConnectionTypeAssociationPropertyResponse? connectionType;
  /// Gets the creation time.
  final String? creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Gets the field definition values of the connection.
  final Map<String, String>? fieldDefinitionValues;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Gets the last modified time.
  final String? lastModifiedTime;
  /// The name of the resource
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
    this.azureApiVersion,
    this.connectionType,
    this.creationTime,
    this.description,
    this.fieldDefinitionValues,
    this.id,
    this.lastModifiedTime,
    this.name,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'connectionType': ?connectionType?.toMap(),
      'creationTime': ?creationTime,
      'description': ?description,
      'fieldDefinitionValues': ?fieldDefinitionValues,
      'id': ?id,
      'lastModifiedTime': ?lastModifiedTime,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionType: (() { final guardedValue = map['connectionType']; if (guardedValue == null) return null; return ConnectionTypeAssociationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fieldDefinitionValues: (() { final guardedValue = map['fieldDefinitionValues']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_definition_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConnectionType.
class GetConnectionTypeResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets the creation time.
  final String creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Gets the field definitions of the connection type.
  final Map<String, FieldDefinitionResponse> fieldDefinitions;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Gets or sets a Boolean value to indicate if the connection type is global.
  final bool? isGlobal;
  /// Gets or sets the last modified time.
  final String? lastModifiedTime;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetConnectionTypeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Gets the creation time.
  /// [description] Gets or sets the description.
  /// [fieldDefinitions] Gets the field definitions of the connection type.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isGlobal] Gets or sets a Boolean value to indicate if the connection type is global.
  /// [lastModifiedTime] Gets or sets the last modified time.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetConnectionTypeResult({
    required this.azureApiVersion,
    required this.creationTime,
    this.description,
    required this.fieldDefinitions,
    required this.id,
    this.isGlobal,
    this.lastModifiedTime,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationTime': creationTime,
      'description': ?description,
      'fieldDefinitions': pulumi.Input.encodeMapValues<FieldDefinitionResponse, Map<String, dynamic>>(fieldDefinitions, (value) => value.toMap()),
      'id': id,
      'isGlobal': ?isGlobal,
      'lastModifiedTime': ?lastModifiedTime,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetConnectionTypeResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionTypeResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fieldDefinitions: pulumi.Input.decodeMapValues<FieldDefinitionResponse>(map['fieldDefinitions']!, (value) => FieldDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      isGlobal: (() { final guardedValue = map['isGlobal']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

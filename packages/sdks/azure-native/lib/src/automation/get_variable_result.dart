// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getVariable.
class GetVariableResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the creation time.
  final String? creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Gets or sets the encrypted flag of the variable.
  final bool? isEncrypted;
  /// Gets or sets the last modified time.
  final String? lastModifiedTime;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Gets or sets the value of the variable.
  final String? value;

  /// Creates a new [GetVariableResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Gets or sets the creation time.
  /// [description] Gets or sets the description.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isEncrypted] Gets or sets the encrypted flag of the variable.
  /// [lastModifiedTime] Gets or sets the last modified time.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [value] Gets or sets the value of the variable.
  const GetVariableResult({
    required this.azureApiVersion,
    this.creationTime,
    this.description,
    required this.id,
    this.isEncrypted,
    this.lastModifiedTime,
    required this.name,
    required this.systemData,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationTime': ?creationTime,
      'description': ?description,
      'id': id,
      'isEncrypted': ?isEncrypted,
      'lastModifiedTime': ?lastModifiedTime,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
      'value': ?value,
    };
  }

  factory GetVariableResult.fromMap(Map<String, dynamic> map) {
    return GetVariableResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      isEncrypted: (() { final guardedValue = map['isEncrypted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

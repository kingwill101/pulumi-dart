// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Workspace description.
  final String? description;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Workspace title.
  final String title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWorkspaceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Workspace description.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [title] Workspace title.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetWorkspaceResult({
    required this.azureApiVersion,
    this.description,
    required this.id,
    required this.name,
    required this.systemData,
    required this.title,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'id': id,
      'name': name,
      'systemData': systemData.toMap(),
      'title': title,
      'type': type,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      title: map['title'] as String,
      type: map['type'] as String,
    );
  }
}


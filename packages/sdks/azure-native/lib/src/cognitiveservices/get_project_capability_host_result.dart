// ignore_for_file: unused_element, unnecessary_cast

import 'project_capability_host_response.dart';

/// Result data returned by getProjectCapabilityHost.
class GetProjectCapabilityHostResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// [Required] Additional attributes of the entity.
  final ProjectCapabilityHostResponse projectCapabilityHostProperties;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetProjectCapabilityHostResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [projectCapabilityHostProperties] [Required] Additional attributes of the entity.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetProjectCapabilityHostResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.projectCapabilityHostProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'projectCapabilityHostProperties': projectCapabilityHostProperties.toMap(),
      'type': type,
    };
  }

  factory GetProjectCapabilityHostResult.fromMap(Map<String, dynamic> map) {
    return GetProjectCapabilityHostResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      projectCapabilityHostProperties: ProjectCapabilityHostResponse.fromMap((map['projectCapabilityHostProperties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}


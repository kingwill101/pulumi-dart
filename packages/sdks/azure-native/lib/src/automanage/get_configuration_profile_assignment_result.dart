// ignore_for_file: unused_element, unnecessary_cast

import 'configuration_profile_assignment_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConfigurationProfileAssignment.
class GetConfigurationProfileAssignmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Azure resource id. Indicates if this resource is managed by another Azure resource.
  final String managedBy;
  /// The name of the resource
  final String name;
  /// Properties of the configuration profile assignment.
  final ConfigurationProfileAssignmentPropertiesResponse properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetConfigurationProfileAssignmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [managedBy] Azure resource id. Indicates if this resource is managed by another Azure resource.
  /// [name] The name of the resource
  /// [properties] Properties of the configuration profile assignment.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetConfigurationProfileAssignmentResult({
    required this.azureApiVersion,
    required this.id,
    required this.managedBy,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'managedBy': managedBy,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetConfigurationProfileAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationProfileAssignmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      managedBy: map['managedBy'] as String,
      name: map['name'] as String,
      properties: ConfigurationProfileAssignmentPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

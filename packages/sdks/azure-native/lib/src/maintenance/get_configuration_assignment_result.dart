// ignore_for_file: unused_element, unnecessary_cast

import 'configuration_assignment_filter_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConfigurationAssignment.
class GetConfigurationAssignmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Properties of the configuration assignment
  final ConfigurationAssignmentFilterPropertiesResponse? filter;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Location of the resource
  final String? location;
  /// The maintenance configuration Id
  final String? maintenanceConfigurationId;
  /// The name of the resource
  final String name;
  /// The unique resourceId
  final String? resourceId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetConfigurationAssignmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [filter] Properties of the configuration assignment
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] Location of the resource
  /// [maintenanceConfigurationId] The maintenance configuration Id
  /// [name] The name of the resource
  /// [resourceId] The unique resourceId
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetConfigurationAssignmentResult({
    required this.azureApiVersion,
    this.filter,
    required this.id,
    this.location,
    this.maintenanceConfigurationId,
    required this.name,
    this.resourceId,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'filter': ?filter == null ? null : filter!.toMap(),
      'id': id,
      'location': ?location,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'name': name,
      'resourceId': ?resourceId,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetConfigurationAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationAssignmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      filter: map['filter'] == null ? null : ConfigurationAssignmentFilterPropertiesResponse.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      maintenanceConfigurationId: map['maintenanceConfigurationId'] == null ? null : map['maintenanceConfigurationId'] as String,
      name: map['name'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'configuration_assignment_filter_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConfigurationAssignment.
class GetConfigurationAssignmentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Properties of the configuration assignment
  final ConfigurationAssignmentFilterPropertiesResponse? filter;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Location of the resource
  final String? location;
  /// The maintenance configuration Id
  final String? maintenanceConfigurationId;
  /// The name of the resource
  final String? name;
  /// The unique resourceId
  final String? resourceId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetConfigurationAssignmentResult({
    this.azureApiVersion,
    this.filter,
    this.id,
    this.location,
    this.maintenanceConfigurationId,
    this.name,
    this.resourceId,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'location': ?location,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'name': ?name,
      'resourceId': ?resourceId,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetConfigurationAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationAssignmentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return ConfigurationAssignmentFilterPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceConfigurationId: (() { final guardedValue = map['maintenanceConfigurationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

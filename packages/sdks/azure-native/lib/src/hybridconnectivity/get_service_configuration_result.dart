// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getServiceConfiguration.
class GetServiceConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The port on which service is enabled.
  final double? port;
  /// The resource provisioning state.
  final String provisioningState;
  /// The resource Id of the connectivity endpoint (optional).
  final String? resourceId;
  /// Name of the service.
  final String serviceName;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetServiceConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [port] The port on which service is enabled.
  /// [provisioningState] The resource provisioning state.
  /// [resourceId] The resource Id of the connectivity endpoint (optional).
  /// [serviceName] Name of the service.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetServiceConfigurationResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    this.port,
    required this.provisioningState,
    this.resourceId,
    required this.serviceName,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'port': ?port,
      'provisioningState': provisioningState,
      'resourceId': ?resourceId,
      'serviceName': serviceName,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetServiceConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetServiceConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return guardedValue as double; })(),
      provisioningState: map['provisioningState'] as String,
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceName: map['serviceName'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}


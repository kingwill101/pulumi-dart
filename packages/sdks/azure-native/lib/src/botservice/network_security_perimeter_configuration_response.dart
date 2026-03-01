// ignore_for_file: unused_element, unnecessary_cast

import 'network_security_perimeter_configuration_properties_response.dart';
import 'system_data_response.dart';

/// Network Security Perimeter configuration
class NetworkSecurityPerimeterConfigurationResponse {
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Properties of the Network Security Perimeter configuration
  final NetworkSecurityPerimeterConfigurationPropertiesResponse? properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [NetworkSecurityPerimeterConfigurationResponse].
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [properties] Properties of the Network Security Perimeter configuration
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  NetworkSecurityPerimeterConfigurationResponse({
    required this.id,
    required this.name,
    this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'properties': ?properties == null ? null : properties!.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory NetworkSecurityPerimeterConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterConfigurationResponse(
      id: map['id'] as String,
      name: map['name'] as String,
      properties: map['properties'] == null ? null : NetworkSecurityPerimeterConfigurationPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}


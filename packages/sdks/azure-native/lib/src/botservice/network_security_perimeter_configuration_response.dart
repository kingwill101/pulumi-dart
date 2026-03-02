// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_perimeter_configuration_properties_response.dart';
import 'system_data_response.dart';

/// Network Security Perimeter configuration
class NetworkSecurityPerimeterConfigurationResponse {
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final pulumi.Input<String> id;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// Properties of the Network Security Perimeter configuration
  final pulumi.Input<NetworkSecurityPerimeterConfigurationPropertiesResponse>? properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

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
      'properties': ?pulumi.Input.mapOptionalInputValue<NetworkSecurityPerimeterConfigurationPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'type': type,
    };
  }

  factory NetworkSecurityPerimeterConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterConfigurationResponse(
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      properties: map['properties'] == null ? null : (NetworkSecurityPerimeterConfigurationPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      systemData: (SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}


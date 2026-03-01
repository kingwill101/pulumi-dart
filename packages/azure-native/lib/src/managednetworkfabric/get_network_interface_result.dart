// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getNetworkInterface.
class GetNetworkInterfaceResult {
  /// Administrative state of the resource.
  final String administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The ARM resource id of the interface or compute server its connected to.
  final String connectedTo;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The Interface Type. Example: Management/Data
  final String interfaceType;
  /// IPv4Address of the interface.
  final String ipv4Address;
  /// IPv6Address of the interface.
  final String ipv6Address;
  /// The name of the resource
  final String name;
  /// Physical Identifier of the network interface.
  final String physicalIdentifier;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetNetworkInterfaceResult].
  /// [administrativeState] Administrative state of the resource.
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectedTo] The ARM resource id of the interface or compute server its connected to.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [interfaceType] The Interface Type. Example: Management/Data
  /// [ipv4Address] IPv4Address of the interface.
  /// [ipv6Address] IPv6Address of the interface.
  /// [name] The name of the resource
  /// [physicalIdentifier] Physical Identifier of the network interface.
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetNetworkInterfaceResult({
    required this.administrativeState,
    this.annotation,
    required this.azureApiVersion,
    required this.connectedTo,
    required this.id,
    required this.interfaceType,
    required this.ipv4Address,
    required this.ipv6Address,
    required this.name,
    required this.physicalIdentifier,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': azureApiVersion,
      'connectedTo': connectedTo,
      'id': id,
      'interfaceType': interfaceType,
      'ipv4Address': ipv4Address,
      'ipv6Address': ipv6Address,
      'name': name,
      'physicalIdentifier': physicalIdentifier,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetNetworkInterfaceResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceResult(
      administrativeState: map['administrativeState'] as String,
      annotation: map['annotation'] == null ? null : map['annotation'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      connectedTo: map['connectedTo'] as String,
      id: map['id'] as String,
      interfaceType: map['interfaceType'] as String,
      ipv4Address: map['ipv4Address'] as String,
      ipv6Address: map['ipv6Address'] as String,
      name: map['name'] as String,
      physicalIdentifier: map['physicalIdentifier'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}


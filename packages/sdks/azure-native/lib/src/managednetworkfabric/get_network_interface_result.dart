// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getNetworkInterface.
class GetNetworkInterfaceResult {
  /// Administrative state of the resource.
  final String? administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The ARM resource id of the interface or compute server its connected to.
  final String? connectedTo;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The Interface Type. Example: Management/Data
  final String? interfaceType;
  /// IPv4Address of the interface.
  final String? ipv4Address;
  /// IPv6Address of the interface.
  final String? ipv6Address;
  /// The name of the resource
  final String? name;
  /// Physical Identifier of the network interface.
  final String? physicalIdentifier;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetNetworkInterfaceResult({
    this.administrativeState,
    this.annotation,
    this.azureApiVersion,
    this.connectedTo,
    this.id,
    this.interfaceType,
    this.ipv4Address,
    this.ipv6Address,
    this.name,
    this.physicalIdentifier,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': ?administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': ?azureApiVersion,
      'connectedTo': ?connectedTo,
      'id': ?id,
      'interfaceType': ?interfaceType,
      'ipv4Address': ?ipv4Address,
      'ipv6Address': ?ipv6Address,
      'name': ?name,
      'physicalIdentifier': ?physicalIdentifier,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetNetworkInterfaceResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceResult(
      administrativeState: (() { final guardedValue = map['administrativeState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectedTo: (() { final guardedValue = map['connectedTo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interfaceType: (() { final guardedValue = map['interfaceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv4Address: (() { final guardedValue = map['ipv4Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      physicalIdentifier: (() { final guardedValue = map['physicalIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getNetworkBootstrapInterface.
class GetNetworkBootstrapInterfaceResult {
  /// Additional description of the interface.
  final String? additionalDescription;
  /// Administrative state of the resource.
  final String administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Configuration state of the resource.
  final String configurationState;
  /// Connected to information of the device.
  final String connectedTo;
  /// Description of the interface.
  final String description;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Type of the interface.
  final String interfaceType;
  /// IPv4Address of the interface.
  final String ipv4Address;
  /// IPv6Address of the interface.
  final String ipv6Address;
  /// The name of the resource
  final String name;
  /// Physical identifier of the device.
  final String physicalIdentifier;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Serial number of the interface. Format of serial Number - Make;Model;HardwareRevisionId;SerialNumber.
  final String? serialNumber;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetNetworkBootstrapInterfaceResult].
  /// [additionalDescription] Additional description of the interface.
  /// [administrativeState] Administrative state of the resource.
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationState] Configuration state of the resource.
  /// [connectedTo] Connected to information of the device.
  /// [description] Description of the interface.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [interfaceType] Type of the interface.
  /// [ipv4Address] IPv4Address of the interface.
  /// [ipv6Address] IPv6Address of the interface.
  /// [name] The name of the resource
  /// [physicalIdentifier] Physical identifier of the device.
  /// [provisioningState] Provisioning state of the resource.
  /// [serialNumber] Serial number of the interface. Format of serial Number - Make;Model;HardwareRevisionId;SerialNumber.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetNetworkBootstrapInterfaceResult({
    this.additionalDescription,
    required this.administrativeState,
    this.annotation,
    required this.azureApiVersion,
    required this.configurationState,
    required this.connectedTo,
    required this.description,
    required this.id,
    required this.interfaceType,
    required this.ipv4Address,
    required this.ipv6Address,
    required this.name,
    required this.physicalIdentifier,
    required this.provisioningState,
    this.serialNumber,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDescription': ?additionalDescription,
      'administrativeState': administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': azureApiVersion,
      'configurationState': configurationState,
      'connectedTo': connectedTo,
      'description': description,
      'id': id,
      'interfaceType': interfaceType,
      'ipv4Address': ipv4Address,
      'ipv6Address': ipv6Address,
      'name': name,
      'physicalIdentifier': physicalIdentifier,
      'provisioningState': provisioningState,
      'serialNumber': ?serialNumber,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetNetworkBootstrapInterfaceResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkBootstrapInterfaceResult(
      additionalDescription: (() { final guardedValue = map['additionalDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      administrativeState: map['administrativeState'] as String,
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      configurationState: map['configurationState'] as String,
      connectedTo: map['connectedTo'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      interfaceType: map['interfaceType'] as String,
      ipv4Address: map['ipv4Address'] as String,
      ipv6Address: map['ipv6Address'] as String,
      name: map['name'] as String,
      physicalIdentifier: map['physicalIdentifier'] as String,
      provisioningState: map['provisioningState'] as String,
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

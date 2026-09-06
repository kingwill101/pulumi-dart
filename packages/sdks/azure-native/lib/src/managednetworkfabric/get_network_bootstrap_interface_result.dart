// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getNetworkBootstrapInterface.
class GetNetworkBootstrapInterfaceResult {
  /// Additional description of the interface.
  final String? additionalDescription;
  /// Administrative state of the resource.
  final String? administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Configuration state of the resource.
  final String? configurationState;
  /// Connected to information of the device.
  final String? connectedTo;
  /// Description of the interface.
  final String? description;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Type of the interface.
  final String? interfaceType;
  /// IPv4Address of the interface.
  final String? ipv4Address;
  /// IPv6Address of the interface.
  final String? ipv6Address;
  /// The name of the resource
  final String? name;
  /// Physical identifier of the device.
  final String? physicalIdentifier;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Serial number of the interface. Format of serial Number - Make;Model;HardwareRevisionId;SerialNumber.
  final String? serialNumber;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
    this.administrativeState,
    this.annotation,
    this.azureApiVersion,
    this.configurationState,
    this.connectedTo,
    this.description,
    this.id,
    this.interfaceType,
    this.ipv4Address,
    this.ipv6Address,
    this.name,
    this.physicalIdentifier,
    this.provisioningState,
    this.serialNumber,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDescription': ?additionalDescription,
      'administrativeState': ?administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': ?azureApiVersion,
      'configurationState': ?configurationState,
      'connectedTo': ?connectedTo,
      'description': ?description,
      'id': ?id,
      'interfaceType': ?interfaceType,
      'ipv4Address': ?ipv4Address,
      'ipv6Address': ?ipv6Address,
      'name': ?name,
      'physicalIdentifier': ?physicalIdentifier,
      'provisioningState': ?provisioningState,
      'serialNumber': ?serialNumber,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetNetworkBootstrapInterfaceResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkBootstrapInterfaceResult(
      additionalDescription: (() { final guardedValue = map['additionalDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      administrativeState: (() { final guardedValue = map['administrativeState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationState: (() { final guardedValue = map['configurationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectedTo: (() { final guardedValue = map['connectedTo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interfaceType: (() { final guardedValue = map['interfaceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv4Address: (() { final guardedValue = map['ipv4Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      physicalIdentifier: (() { final guardedValue = map['physicalIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getNetworkDevice.
class GetNetworkDeviceResult {
  /// Administrative state of the resource.
  final String? administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Configuration state of the resource.
  final String? configurationState;
  /// The host name of the device.
  final String? hostName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// Management IPv4 Address.
  final String? managementIpv4Address;
  /// Management IPv6 Address.
  final String? managementIpv6Address;
  /// The name of the resource
  final String? name;
  /// NetworkDeviceRole is the device role: Example: CE | ToR.
  final String? networkDeviceRole;
  /// Network Device SKU name.
  final String? networkDeviceSku;
  /// Reference to network rack resource id.
  final String? networkRackId;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Serial number of the device. Format of serial Number - Make;Model;HardwareRevisionId;SerialNumber.
  final String? serialNumber;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Current version of the device as defined in SKU.
  final String? version;

  /// Creates a new [GetNetworkDeviceResult].
  /// [administrativeState] Administrative state of the resource.
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationState] Configuration state of the resource.
  /// [hostName] The host name of the device.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [managementIpv4Address] Management IPv4 Address.
  /// [managementIpv6Address] Management IPv6 Address.
  /// [name] The name of the resource
  /// [networkDeviceRole] NetworkDeviceRole is the device role: Example: CE | ToR.
  /// [networkDeviceSku] Network Device SKU name.
  /// [networkRackId] Reference to network rack resource id.
  /// [provisioningState] Provisioning state of the resource.
  /// [serialNumber] Serial number of the device. Format of serial Number - Make;Model;HardwareRevisionId;SerialNumber.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Current version of the device as defined in SKU.
  const GetNetworkDeviceResult({
    this.administrativeState,
    this.annotation,
    this.azureApiVersion,
    this.configurationState,
    this.hostName,
    this.id,
    this.location,
    this.managementIpv4Address,
    this.managementIpv6Address,
    this.name,
    this.networkDeviceRole,
    this.networkDeviceSku,
    this.networkRackId,
    this.provisioningState,
    this.serialNumber,
    this.systemData,
    this.tags,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': ?administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': ?azureApiVersion,
      'configurationState': ?configurationState,
      'hostName': ?hostName,
      'id': ?id,
      'location': ?location,
      'managementIpv4Address': ?managementIpv4Address,
      'managementIpv6Address': ?managementIpv6Address,
      'name': ?name,
      'networkDeviceRole': ?networkDeviceRole,
      'networkDeviceSku': ?networkDeviceSku,
      'networkRackId': ?networkRackId,
      'provisioningState': ?provisioningState,
      'serialNumber': ?serialNumber,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetNetworkDeviceResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkDeviceResult(
      administrativeState: (() { final guardedValue = map['administrativeState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationState: (() { final guardedValue = map['configurationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementIpv4Address: (() { final guardedValue = map['managementIpv4Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementIpv6Address: (() { final guardedValue = map['managementIpv6Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkDeviceRole: (() { final guardedValue = map['networkDeviceRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkDeviceSku: (() { final guardedValue = map['networkDeviceSku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkRackId: (() { final guardedValue = map['networkRackId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNetworkBootstrapDevice.
class GetNetworkBootstrapDeviceResult {
  /// Administrative state of the resource.
  final String? administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Configuration state of the resource.
  final String? configurationState;
  /// Dhcp server IPv4 Address.
  final String? dhcpV4ServerIpAddress;
  /// The host name of the device.
  final String? hostName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Network Bootstrap Device SKU name.
  final String? networkDeviceSku;
  /// Associated Network Fabric Resource ID
  final String? networkFabricId;
  /// Primary Management IPv4 Address.
  final String? primaryManagementIpv4Address;
  /// Primary Management IPv6 Address.
  final String? primaryManagementIpv6Address;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Secondary Management IPv4 Address.
  final String? secondaryManagementIpv4Address;
  /// Secondary Management IPv6 Address.
  final String? secondaryManagementIpv6Address;
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

  /// Creates a new [GetNetworkBootstrapDeviceResult].
  /// [administrativeState] Administrative state of the resource.
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationState] Configuration state of the resource.
  /// [dhcpV4ServerIpAddress] Dhcp server IPv4 Address.
  /// [hostName] The host name of the device.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkDeviceSku] Network Bootstrap Device SKU name.
  /// [networkFabricId] Associated Network Fabric Resource ID
  /// [primaryManagementIpv4Address] Primary Management IPv4 Address.
  /// [primaryManagementIpv6Address] Primary Management IPv6 Address.
  /// [provisioningState] Provisioning state of the resource.
  /// [secondaryManagementIpv4Address] Secondary Management IPv4 Address.
  /// [secondaryManagementIpv6Address] Secondary Management IPv6 Address.
  /// [serialNumber] Serial number of the device. Format of serial Number - Make;Model;HardwareRevisionId;SerialNumber.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Current version of the device as defined in SKU.
  const GetNetworkBootstrapDeviceResult({
    this.administrativeState,
    this.annotation,
    this.azureApiVersion,
    this.configurationState,
    this.dhcpV4ServerIpAddress,
    this.hostName,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.networkDeviceSku,
    this.networkFabricId,
    this.primaryManagementIpv4Address,
    this.primaryManagementIpv6Address,
    this.provisioningState,
    this.secondaryManagementIpv4Address,
    this.secondaryManagementIpv6Address,
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
      'dhcpV4ServerIpAddress': ?dhcpV4ServerIpAddress,
      'hostName': ?hostName,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'networkDeviceSku': ?networkDeviceSku,
      'networkFabricId': ?networkFabricId,
      'primaryManagementIpv4Address': ?primaryManagementIpv4Address,
      'primaryManagementIpv6Address': ?primaryManagementIpv6Address,
      'provisioningState': ?provisioningState,
      'secondaryManagementIpv4Address': ?secondaryManagementIpv4Address,
      'secondaryManagementIpv6Address': ?secondaryManagementIpv6Address,
      'serialNumber': ?serialNumber,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetNetworkBootstrapDeviceResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkBootstrapDeviceResult(
      administrativeState: (() { final guardedValue = map['administrativeState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationState: (() { final guardedValue = map['configurationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dhcpV4ServerIpAddress: (() { final guardedValue = map['dhcpV4ServerIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkDeviceSku: (() { final guardedValue = map['networkDeviceSku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkFabricId: (() { final guardedValue = map['networkFabricId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryManagementIpv4Address: (() { final guardedValue = map['primaryManagementIpv4Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryManagementIpv6Address: (() { final guardedValue = map['primaryManagementIpv6Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryManagementIpv4Address: (() { final guardedValue = map['secondaryManagementIpv4Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryManagementIpv6Address: (() { final guardedValue = map['secondaryManagementIpv6Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

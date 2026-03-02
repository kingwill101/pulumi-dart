// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getNetworkDevice.
class GetNetworkDeviceResult {
  /// Administrative state of the resource.
  final String administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Configuration state of the resource.
  final String configurationState;
  /// The host name of the device.
  final String? hostName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// Management IPv4 Address.
  final String managementIpv4Address;
  /// Management IPv6 Address.
  final String managementIpv6Address;
  /// The name of the resource
  final String name;
  /// NetworkDeviceRole is the device role: Example: CE | ToR.
  final String networkDeviceRole;
  /// Network Device SKU name.
  final String? networkDeviceSku;
  /// Reference to network rack resource id.
  final String networkRackId;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Serial number of the device. Format of serial Number - Make;Model;HardwareRevisionId;SerialNumber.
  final String serialNumber;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Current version of the device as defined in SKU.
  final String version;

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
  GetNetworkDeviceResult({
    required this.administrativeState,
    this.annotation,
    required this.azureApiVersion,
    required this.configurationState,
    this.hostName,
    required this.id,
    required this.location,
    required this.managementIpv4Address,
    required this.managementIpv6Address,
    required this.name,
    required this.networkDeviceRole,
    this.networkDeviceSku,
    required this.networkRackId,
    required this.provisioningState,
    required this.serialNumber,
    required this.systemData,
    this.tags,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': azureApiVersion,
      'configurationState': configurationState,
      'hostName': ?hostName,
      'id': id,
      'location': location,
      'managementIpv4Address': managementIpv4Address,
      'managementIpv6Address': managementIpv6Address,
      'name': name,
      'networkDeviceRole': networkDeviceRole,
      'networkDeviceSku': ?networkDeviceSku,
      'networkRackId': networkRackId,
      'provisioningState': provisioningState,
      'serialNumber': serialNumber,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'version': version,
    };
  }

  factory GetNetworkDeviceResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkDeviceResult(
      administrativeState: map['administrativeState'] as String,
      annotation: map['annotation'] == null ? null : map['annotation']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      configurationState: map['configurationState'] as String,
      hostName: map['hostName'] == null ? null : map['hostName']! as String,
      id: map['id'] as String,
      location: map['location'] as String,
      managementIpv4Address: map['managementIpv4Address'] as String,
      managementIpv6Address: map['managementIpv6Address'] as String,
      name: map['name'] as String,
      networkDeviceRole: map['networkDeviceRole'] as String,
      networkDeviceSku: map['networkDeviceSku'] == null ? null : map['networkDeviceSku']! as String,
      networkRackId: map['networkRackId'] as String,
      provisioningState: map['provisioningState'] as String,
      serialNumber: map['serialNumber'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}


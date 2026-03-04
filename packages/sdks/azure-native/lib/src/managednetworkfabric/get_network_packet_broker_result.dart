// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getNetworkPacketBroker.
class GetNetworkPacketBrokerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// List of neighbor group IDs configured on NPB.
  final List<String> neighborGroupIds;

  /// List of ARM resource IDs of Network Devices [NPB].
  final List<String> networkDeviceIds;

  /// ARM resource ID of the Network Fabric.
  final String networkFabricId;

  /// List of network Tap IDs configured on NPB.
  final List<String> networkTapIds;

  /// Provisioning state of the resource.
  final String provisioningState;

  /// List of network interfaces across NPB devices that are used to mirror source traffic.
  final List<String> sourceInterfaceIds;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetNetworkPacketBrokerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [neighborGroupIds] List of neighbor group IDs configured on NPB.
  /// [networkDeviceIds] List of ARM resource IDs of Network Devices [NPB].
  /// [networkFabricId] ARM resource ID of the Network Fabric.
  /// [networkTapIds] List of network Tap IDs configured on NPB.
  /// [provisioningState] Provisioning state of the resource.
  /// [sourceInterfaceIds] List of network interfaces across NPB devices that are used to mirror source traffic.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetNetworkPacketBrokerResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.neighborGroupIds,
    required this.networkDeviceIds,
    required this.networkFabricId,
    required this.networkTapIds,
    required this.provisioningState,
    required this.sourceInterfaceIds,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'neighborGroupIds': neighborGroupIds,
      'networkDeviceIds': networkDeviceIds,
      'networkFabricId': networkFabricId,
      'networkTapIds': networkTapIds,
      'provisioningState': provisioningState,
      'sourceInterfaceIds': sourceInterfaceIds,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetNetworkPacketBrokerResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkPacketBrokerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      neighborGroupIds: (map['neighborGroupIds'] as List).cast<String>(),
      networkDeviceIds: (map['networkDeviceIds'] as List).cast<String>(),
      networkFabricId: map['networkFabricId'] as String,
      networkTapIds: (map['networkTapIds'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      sourceInterfaceIds: (map['sourceInterfaceIds'] as List).cast<String>(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}

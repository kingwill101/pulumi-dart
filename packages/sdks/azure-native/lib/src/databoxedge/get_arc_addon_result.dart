// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getArcAddon.
class GetArcAddonResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Host OS supported by the Arc addon.
  final String hostPlatform;
  /// Platform where the runtime is hosted.
  final String hostPlatformType;
  /// The path ID that uniquely identifies the object.
  final String id;
  /// Addon type.
  /// Expected value is 'ArcForKubernetes'.
  final String kind;
  /// The object name.
  final String name;
  /// Addon Provisioning State
  final String provisioningState;
  /// Arc resource group name
  final String resourceGroupName;
  /// Arc resource location
  final String resourceLocation;
  /// Arc resource Name
  final String resourceName;
  /// Arc resource subscription Id
  final String subscriptionId;
  /// Metadata pertaining to creation and last modification of Addon
  final SystemDataResponse systemData;
  /// The hierarchical type of the object.
  final String type;
  /// Arc resource version
  final String version;

  /// Creates a new [GetArcAddonResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [hostPlatform] Host OS supported by the Arc addon.
  /// [hostPlatformType] Platform where the runtime is hosted.
  /// [id] The path ID that uniquely identifies the object.
  /// [kind] Addon type.
  /// [name] The object name.
  /// [provisioningState] Addon Provisioning State
  /// [resourceGroupName] Arc resource group name
  /// [resourceLocation] Arc resource location
  /// [resourceName] Arc resource Name
  /// [subscriptionId] Arc resource subscription Id
  /// [systemData] Metadata pertaining to creation and last modification of Addon
  /// [type] The hierarchical type of the object.
  /// [version] Arc resource version
  GetArcAddonResult({
    required this.azureApiVersion,
    required this.hostPlatform,
    required this.hostPlatformType,
    required this.id,
    required this.kind,
    required this.name,
    required this.provisioningState,
    required this.resourceGroupName,
    required this.resourceLocation,
    required this.resourceName,
    required this.subscriptionId,
    required this.systemData,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'hostPlatform': hostPlatform,
      'hostPlatformType': hostPlatformType,
      'id': id,
      'kind': kind,
      'name': name,
      'provisioningState': provisioningState,
      'resourceGroupName': resourceGroupName,
      'resourceLocation': resourceLocation,
      'resourceName': resourceName,
      'subscriptionId': subscriptionId,
      'systemData': systemData.toMap(),
      'type': type,
      'version': version,
    };
  }

  factory GetArcAddonResult.fromMap(Map<String, dynamic> map) {
    return GetArcAddonResult(
      azureApiVersion: map['azureApiVersion'] as String,
      hostPlatform: map['hostPlatform'] as String,
      hostPlatformType: map['hostPlatformType'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceLocation: map['resourceLocation'] as String,
      resourceName: map['resourceName'] as String,
      subscriptionId: map['subscriptionId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}


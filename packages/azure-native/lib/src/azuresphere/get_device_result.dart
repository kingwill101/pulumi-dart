// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getDevice.
class GetDeviceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// SKU of the chip
  final String chipSku;
  /// Device ID
  final String? deviceId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// OS version available for installation when update requested
  final String lastAvailableOsVersion;
  /// OS version running on device when update requested
  final String lastInstalledOsVersion;
  /// Time when update requested and new OS version available
  final String lastOsUpdateUtc;
  /// Time when update was last requested
  final String lastUpdateRequestUtc;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDeviceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [chipSku] SKU of the chip
  /// [deviceId] Device ID
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [lastAvailableOsVersion] OS version available for installation when update requested
  /// [lastInstalledOsVersion] OS version running on device when update requested
  /// [lastOsUpdateUtc] Time when update requested and new OS version available
  /// [lastUpdateRequestUtc] Time when update was last requested
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetDeviceResult({
    required this.azureApiVersion,
    required this.chipSku,
    this.deviceId,
    required this.id,
    required this.lastAvailableOsVersion,
    required this.lastInstalledOsVersion,
    required this.lastOsUpdateUtc,
    required this.lastUpdateRequestUtc,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'chipSku': chipSku,
      'deviceId': ?deviceId,
      'id': id,
      'lastAvailableOsVersion': lastAvailableOsVersion,
      'lastInstalledOsVersion': lastInstalledOsVersion,
      'lastOsUpdateUtc': lastOsUpdateUtc,
      'lastUpdateRequestUtc': lastUpdateRequestUtc,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetDeviceResult.fromMap(Map<String, dynamic> map) {
    return GetDeviceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      chipSku: map['chipSku'] as String,
      deviceId: map['deviceId'] == null ? null : map['deviceId'] as String,
      id: map['id'] as String,
      lastAvailableOsVersion: map['lastAvailableOsVersion'] as String,
      lastInstalledOsVersion: map['lastInstalledOsVersion'] as String,
      lastOsUpdateUtc: map['lastOsUpdateUtc'] as String,
      lastUpdateRequestUtc: map['lastUpdateRequestUtc'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}


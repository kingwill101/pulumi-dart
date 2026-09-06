// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getDevice.
class GetDeviceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// SKU of the chip
  final String? chipSku;
  /// Device ID
  final String? deviceId;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// OS version available for installation when update requested
  final String? lastAvailableOsVersion;
  /// OS version running on device when update requested
  final String? lastInstalledOsVersion;
  /// Time when update requested and new OS version available
  final String? lastOsUpdateUtc;
  /// Time when update was last requested
  final String? lastUpdateRequestUtc;
  /// The name of the resource
  final String? name;
  /// The status of the last operation.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetDeviceResult({
    this.azureApiVersion,
    this.chipSku,
    this.deviceId,
    this.id,
    this.lastAvailableOsVersion,
    this.lastInstalledOsVersion,
    this.lastOsUpdateUtc,
    this.lastUpdateRequestUtc,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'chipSku': ?chipSku,
      'deviceId': ?deviceId,
      'id': ?id,
      'lastAvailableOsVersion': ?lastAvailableOsVersion,
      'lastInstalledOsVersion': ?lastInstalledOsVersion,
      'lastOsUpdateUtc': ?lastOsUpdateUtc,
      'lastUpdateRequestUtc': ?lastUpdateRequestUtc,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetDeviceResult.fromMap(Map<String, dynamic> map) {
    return GetDeviceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      chipSku: (() { final guardedValue = map['chipSku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceId: (() { final guardedValue = map['deviceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastAvailableOsVersion: (() { final guardedValue = map['lastAvailableOsVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastInstalledOsVersion: (() { final guardedValue = map['lastInstalledOsVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastOsUpdateUtc: (() { final guardedValue = map['lastOsUpdateUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdateRequestUtc: (() { final guardedValue = map['lastUpdateRequestUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

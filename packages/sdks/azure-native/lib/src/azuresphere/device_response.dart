// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';

/// An device resource belonging to a device group resource.
class DeviceResponse {
  /// SKU of the chip
  final pulumi.Input<String> chipSku;

  /// Device ID
  final pulumi.Input<String>? deviceId;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final pulumi.Input<String> id;

  /// OS version available for installation when update requested
  final pulumi.Input<String> lastAvailableOsVersion;

  /// OS version running on device when update requested
  final pulumi.Input<String> lastInstalledOsVersion;

  /// Time when update requested and new OS version available
  final pulumi.Input<String> lastOsUpdateUtc;

  /// Time when update was last requested
  final pulumi.Input<String> lastUpdateRequestUtc;

  /// The name of the resource
  final pulumi.Input<String> name;

  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

  /// Creates a new [DeviceResponse].
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
  DeviceResponse({
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
      'chipSku': chipSku,
      'deviceId': ?deviceId,
      'id': id,
      'lastAvailableOsVersion': lastAvailableOsVersion,
      'lastInstalledOsVersion': lastInstalledOsVersion,
      'lastOsUpdateUtc': lastOsUpdateUtc,
      'lastUpdateRequestUtc': lastUpdateRequestUtc,
      'name': name,
      'provisioningState': provisioningState,
      'systemData':
          pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(
            systemData,
            (value) => value.toMap(),
          ),
      'type': type,
    };
  }

  factory DeviceResponse.fromMap(Map<String, dynamic> map) {
    return DeviceResponse(
      chipSku: pulumi.Input.fromValue(map['chipSku'] as String),
      deviceId: (() {
        final guardedValue = map['deviceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastAvailableOsVersion: pulumi.Input.fromValue(
        map['lastAvailableOsVersion'] as String,
      ),
      lastInstalledOsVersion: pulumi.Input.fromValue(
        map['lastInstalledOsVersion'] as String,
      ),
      lastOsUpdateUtc: pulumi.Input.fromValue(map['lastOsUpdateUtc'] as String),
      lastUpdateRequestUtc: pulumi.Input.fromValue(
        map['lastUpdateRequestUtc'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      systemData: pulumi.Input.fromValue(
        SystemDataResponse.fromMap(
          (map['systemData']! as Map).cast<String, dynamic>(),
        ),
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

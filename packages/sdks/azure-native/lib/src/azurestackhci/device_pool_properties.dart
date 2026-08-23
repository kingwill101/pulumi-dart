// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_detail.dart';

/// Properties for device pool.
class DevicePoolProperties {
  /// Custom Location Name for the pool, default: &lt;DevicePoolName&gt;-CL
  final pulumi.Input<String>? customLocationName;
  /// List of machines in device pool.
  final pulumi.Input<List<DeviceDetail>>? devices;
  /// Managed resource group name for the pool
  final pulumi.Input<String>? managedResourceGroup;

  /// Creates a new [DevicePoolProperties].
  /// [customLocationName] Custom Location Name for the pool, default: &lt;DevicePoolName&gt;-CL
  /// [devices] List of machines in device pool.
  /// [managedResourceGroup] Managed resource group name for the pool
  const DevicePoolProperties({
    this.customLocationName,
    this.devices,
    this.managedResourceGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationName': ?customLocationName,
      'devices': ?pulumi.Input.mapOptionalInputValue<List<DeviceDetail>, List<Map<String, dynamic>>>(devices, (value) => pulumi.Input.encodeList<DeviceDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedResourceGroup': ?managedResourceGroup,
    };
  }

  factory DevicePoolProperties.fromMap(Map<String, dynamic> map) {
    return DevicePoolProperties(
      customLocationName: (() { final guardedValue = map['customLocationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceDetail>(guardedValue, (value) => DeviceDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      managedResourceGroup: (() { final guardedValue = map['managedResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

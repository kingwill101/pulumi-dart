// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuresphere_device_args_doc}
/// The set of arguments for Device.
/// {@endtemplate}
/// {@macro pulumi_azuresphere_device_args_doc}
class DeviceArgs {
  /// Name of catalog
  final pulumi.Input<String> catalogName;
  /// Name of device group.
  final pulumi.Input<String> deviceGroupName;
  /// Device ID
  final pulumi.Input<String>? deviceId;
  /// Device name
  final pulumi.Input<String>? deviceName;
  /// Name of product.
  final pulumi.Input<String> productName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DeviceArgs].
  /// [catalogName] Name of catalog
  /// [deviceGroupName] Name of device group.
  /// [deviceId] Device ID
  /// [deviceName] Device name
  /// [productName] Name of product.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DeviceArgs({
    required String catalogName,
    required String deviceGroupName,
    String? deviceId,
    String? deviceName,
    required String productName,
    required String resourceGroupName,
  }) :
      catalogName = pulumi.Input.asInput<String>(catalogName),
      deviceGroupName = pulumi.Input.asInput<String>(deviceGroupName),
      deviceId = pulumi.Input.asOptionalInput<String>(deviceId),
      deviceName = pulumi.Input.asOptionalInput<String>(deviceName),
      productName = pulumi.Input.asInput<String>(productName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'deviceGroupName': deviceGroupName,
      'deviceId': ?deviceId,
      'deviceName': ?deviceName,
      'productName': productName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DeviceArgs.fromMap(Map<String, dynamic> map) {
    return DeviceArgs(
      catalogName: map['catalogName'] as String,
      deviceGroupName: map['deviceGroupName'] as String,
      deviceId: map['deviceId'] == null ? null : map['deviceId'] as String,
      deviceName: map['deviceName'] == null ? null : map['deviceName'] as String,
      productName: map['productName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


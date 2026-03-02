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
    required this.catalogName,
    required this.deviceGroupName,
    this.deviceId,
    this.deviceName,
    required this.productName,
    required this.resourceGroupName,
  });

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
      catalogName: (map['catalogName'] as String).input(),
      deviceGroupName: (map['deviceGroupName'] as String).input(),
      deviceId: map['deviceId'] == null ? null : (map['deviceId']! as String).input(),
      deviceName: map['deviceName'] == null ? null : (map['deviceName']! as String).input(),
      productName: (map['productName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}


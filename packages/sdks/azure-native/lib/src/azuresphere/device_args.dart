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
    required pulumi.Output<String> catalogName,
    required pulumi.Output<String> deviceGroupName,
    pulumi.Output<String>? deviceId,
    pulumi.Output<String>? deviceName,
    required pulumi.Output<String> productName,
    required pulumi.Output<String> resourceGroupName,
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
      catalogName: pulumi.Output.create<String>(map['catalogName'] as String),
      deviceGroupName: pulumi.Output.create<String>(map['deviceGroupName'] as String),
      deviceId: map['deviceId'] == null ? null : pulumi.Output.create<String>(map['deviceId'] as String),
      deviceName: map['deviceName'] == null ? null : pulumi.Output.create<String>(map['deviceName'] as String),
      productName: pulumi.Output.create<String>(map['productName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


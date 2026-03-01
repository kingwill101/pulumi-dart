// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuresphere_get_device_args_doc}
/// Arguments for getDevice.
/// {@endtemplate}
/// {@macro pulumi_azuresphere_get_device_args_doc}
class GetDeviceArgs {
  /// Name of catalog
  final pulumi.Input<String> catalogName;
  /// Name of device group.
  final pulumi.Input<String> deviceGroupName;
  /// Device name
  final pulumi.Input<String> deviceName;
  /// Name of product.
  final pulumi.Input<String> productName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDeviceArgs].
  /// [catalogName] Name of catalog
  /// [deviceGroupName] Name of device group.
  /// [deviceName] Device name
  /// [productName] Name of product.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDeviceArgs({
    required pulumi.Output<String> catalogName,
    required pulumi.Output<String> deviceGroupName,
    required pulumi.Output<String> deviceName,
    required pulumi.Output<String> productName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      catalogName = pulumi.Input.asInput<String>(catalogName),
      deviceGroupName = pulumi.Input.asInput<String>(deviceGroupName),
      deviceName = pulumi.Input.asInput<String>(deviceName),
      productName = pulumi.Input.asInput<String>(productName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'deviceGroupName': deviceGroupName,
      'deviceName': deviceName,
      'productName': productName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDeviceArgs.fromMap(Map<String, dynamic> map) {
    return GetDeviceArgs(
      catalogName: pulumi.Output.create<String>(map['catalogName'] as String),
      deviceGroupName: pulumi.Output.create<String>(map['deviceGroupName'] as String),
      deviceName: pulumi.Output.create<String>(map['deviceName'] as String),
      productName: pulumi.Output.create<String>(map['productName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


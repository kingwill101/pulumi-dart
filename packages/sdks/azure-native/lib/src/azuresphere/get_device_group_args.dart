// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuresphere_get_device_group_args_doc}
/// Arguments for getDeviceGroup.
/// {@endtemplate}
/// {@macro pulumi_azuresphere_get_device_group_args_doc}
class GetDeviceGroupArgs {
  /// Name of catalog
  final pulumi.Input<String> catalogName;
  /// Name of device group.
  final pulumi.Input<String> deviceGroupName;
  /// Name of product.
  final pulumi.Input<String> productName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDeviceGroupArgs].
  /// [catalogName] Name of catalog
  /// [deviceGroupName] Name of device group.
  /// [productName] Name of product.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDeviceGroupArgs({
    required pulumi.Output<String> catalogName,
    required pulumi.Output<String> deviceGroupName,
    required pulumi.Output<String> productName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      catalogName = pulumi.Input.asInput<String>(catalogName),
      deviceGroupName = pulumi.Input.asInput<String>(deviceGroupName),
      productName = pulumi.Input.asInput<String>(productName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'deviceGroupName': deviceGroupName,
      'productName': productName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDeviceGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetDeviceGroupArgs(
      catalogName: pulumi.Output.create<String>(map['catalogName'] as String),
      deviceGroupName: pulumi.Output.create<String>(map['deviceGroupName'] as String),
      productName: pulumi.Output.create<String>(map['productName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


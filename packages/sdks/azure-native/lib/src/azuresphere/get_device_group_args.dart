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
    required this.catalogName,
    required this.deviceGroupName,
    required this.productName,
    required this.resourceGroupName,
  });

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
      catalogName: pulumi.Input.fromValue(map['catalogName'] as String),
      deviceGroupName: pulumi.Input.fromValue(map['deviceGroupName'] as String),
      productName: pulumi.Input.fromValue(map['productName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}

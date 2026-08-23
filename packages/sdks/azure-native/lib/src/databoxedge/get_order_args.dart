// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_get_order_args_doc}
/// Arguments for getOrder.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_get_order_args_doc}
class GetOrderArgs {
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetOrderArgs].
  /// [deviceName] The device name.
  /// [resourceGroupName] The resource group name.
  const GetOrderArgs({
    required this.deviceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOrderArgs.fromMap(Map<String, dynamic> map) {
    return GetOrderArgs(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

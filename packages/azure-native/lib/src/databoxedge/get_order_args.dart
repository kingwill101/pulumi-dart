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
  GetOrderArgs({
    required String deviceName,
    required String resourceGroupName,
  }) :
      deviceName = pulumi.Input.asInput<String>(deviceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOrderArgs.fromMap(Map<String, dynamic> map) {
    return GetOrderArgs(
      deviceName: map['deviceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


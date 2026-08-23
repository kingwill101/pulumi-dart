// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_list_order_dcaccess_code_args_doc}
/// Arguments for listOrderDCAccessCode.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_list_order_dcaccess_code_args_doc}
class ListOrderDCAccessCodeArgs {
  /// The device name
  final pulumi.Input<String> deviceName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListOrderDCAccessCodeArgs].
  /// [deviceName] The device name
  /// [resourceGroupName] The resource group name.
  const ListOrderDCAccessCodeArgs({
    required this.deviceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListOrderDCAccessCodeArgs.fromMap(Map<String, dynamic> map) {
    return ListOrderDCAccessCodeArgs(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

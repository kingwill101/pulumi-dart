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
  ListOrderDCAccessCodeArgs({
    required pulumi.Output<String> deviceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      deviceName = pulumi.Input.asInput<String>(deviceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListOrderDCAccessCodeArgs.fromMap(Map<String, dynamic> map) {
    return ListOrderDCAccessCodeArgs(
      deviceName: pulumi.Output.create<String>(map['deviceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


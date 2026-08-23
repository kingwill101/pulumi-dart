// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_dev_center_args_doc}
/// Arguments for getDevCenter.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_dev_center_args_doc}
class GetDevCenterArgs {
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDevCenterArgs].
  /// [devCenterName] The name of the devcenter.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetDevCenterArgs({
    required this.devCenterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterName': devCenterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDevCenterArgs.fromMap(Map<String, dynamic> map) {
    return GetDevCenterArgs(
      devCenterName: pulumi.Input.fromValue(map['devCenterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

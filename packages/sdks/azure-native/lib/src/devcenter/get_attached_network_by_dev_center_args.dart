// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_attached_network_by_dev_center_args_doc}
/// Arguments for getAttachedNetworkByDevCenter.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_attached_network_by_dev_center_args_doc}
class GetAttachedNetworkByDevCenterArgs {
  /// The name of the attached NetworkConnection.
  final pulumi.Input<String> attachedNetworkConnectionName;
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAttachedNetworkByDevCenterArgs].
  /// [attachedNetworkConnectionName] The name of the attached NetworkConnection.
  /// [devCenterName] The name of the devcenter.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAttachedNetworkByDevCenterArgs({
    required this.attachedNetworkConnectionName,
    required this.devCenterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedNetworkConnectionName': attachedNetworkConnectionName,
      'devCenterName': devCenterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAttachedNetworkByDevCenterArgs.fromMap(Map<String, dynamic> map) {
    return GetAttachedNetworkByDevCenterArgs(
      attachedNetworkConnectionName: pulumi.Input.fromValue(map['attachedNetworkConnectionName'] as String),
      devCenterName: pulumi.Input.fromValue(map['devCenterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

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
  GetAttachedNetworkByDevCenterArgs({
    required String attachedNetworkConnectionName,
    required String devCenterName,
    required String resourceGroupName,
  }) :
      attachedNetworkConnectionName = pulumi.Input.asInput<String>(attachedNetworkConnectionName),
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedNetworkConnectionName': attachedNetworkConnectionName,
      'devCenterName': devCenterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAttachedNetworkByDevCenterArgs.fromMap(Map<String, dynamic> map) {
    return GetAttachedNetworkByDevCenterArgs(
      attachedNetworkConnectionName: map['attachedNetworkConnectionName'] as String,
      devCenterName: map['devCenterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


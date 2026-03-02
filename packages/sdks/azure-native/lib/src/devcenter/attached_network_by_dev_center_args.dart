// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_attached_network_by_dev_center_args_doc}
/// The set of arguments for AttachedNetworkByDevCenter.
/// {@endtemplate}
/// {@macro pulumi_devcenter_attached_network_by_dev_center_args_doc}
class AttachedNetworkByDevCenterArgs {
  /// The name of the attached NetworkConnection.
  final pulumi.Input<String>? attachedNetworkConnectionName;
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The resource ID of the NetworkConnection you want to attach.
  final pulumi.Input<String> networkConnectionId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AttachedNetworkByDevCenterArgs].
  /// [attachedNetworkConnectionName] The name of the attached NetworkConnection.
  /// [devCenterName] The name of the devcenter.
  /// [networkConnectionId] The resource ID of the NetworkConnection you want to attach.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  AttachedNetworkByDevCenterArgs({
    this.attachedNetworkConnectionName,
    required this.devCenterName,
    required this.networkConnectionId,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedNetworkConnectionName': ?attachedNetworkConnectionName,
      'devCenterName': devCenterName,
      'networkConnectionId': networkConnectionId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AttachedNetworkByDevCenterArgs.fromMap(Map<String, dynamic> map) {
    return AttachedNetworkByDevCenterArgs(
      attachedNetworkConnectionName: map['attachedNetworkConnectionName'] == null ? null : (map['attachedNetworkConnectionName'] as String).input(),
      devCenterName: (map['devCenterName'] as String).input(),
      networkConnectionId: (map['networkConnectionId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}


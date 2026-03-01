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
    pulumi.Output<String>? attachedNetworkConnectionName,
    required pulumi.Output<String> devCenterName,
    required pulumi.Output<String> networkConnectionId,
    required pulumi.Output<String> resourceGroupName,
  }) :
      attachedNetworkConnectionName = pulumi.Input.asOptionalInput<String>(attachedNetworkConnectionName),
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      networkConnectionId = pulumi.Input.asInput<String>(networkConnectionId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      attachedNetworkConnectionName: map['attachedNetworkConnectionName'] == null ? null : pulumi.Output.create<String>(map['attachedNetworkConnectionName'] as String),
      devCenterName: pulumi.Output.create<String>(map['devCenterName'] as String),
      networkConnectionId: pulumi.Output.create<String>(map['networkConnectionId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


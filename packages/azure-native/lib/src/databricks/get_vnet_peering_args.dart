// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databricks_get_vnet_peering_args_doc}
/// Arguments for getVNetPeering.
/// {@endtemplate}
/// {@macro pulumi_databricks_get_vnet_peering_args_doc}
class GetVNetPeeringArgs {
  /// The name of the workspace vNet peering.
  final pulumi.Input<String> peeringName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetVNetPeeringArgs].
  /// [peeringName] The name of the workspace vNet peering.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetVNetPeeringArgs({
    required String peeringName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      peeringName = pulumi.Input.asInput<String>(peeringName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeringName': peeringName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetVNetPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetVNetPeeringArgs(
      peeringName: map['peeringName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}


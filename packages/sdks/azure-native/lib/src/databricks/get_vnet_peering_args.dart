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
    required this.peeringName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeringName': peeringName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetVNetPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetVNetPeeringArgs(
      peeringName: pulumi.Input.fromValue(map['peeringName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

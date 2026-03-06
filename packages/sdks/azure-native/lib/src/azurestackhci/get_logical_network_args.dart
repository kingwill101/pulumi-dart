// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_logical_network_args_doc}
/// Arguments for getLogicalNetwork.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_logical_network_args_doc}
class GetLogicalNetworkArgs {
  /// Name of the logical network
  final pulumi.Input<String> logicalNetworkName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLogicalNetworkArgs].
  /// [logicalNetworkName] Name of the logical network
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetLogicalNetworkArgs({
    required this.logicalNetworkName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logicalNetworkName': logicalNetworkName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLogicalNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetLogicalNetworkArgs(
      logicalNetworkName: pulumi.Input.fromValue(map['logicalNetworkName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}


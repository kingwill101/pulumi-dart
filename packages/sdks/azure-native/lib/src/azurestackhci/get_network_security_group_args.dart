// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_network_security_group_args_doc}
/// Arguments for getNetworkSecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_network_security_group_args_doc}
class GetNetworkSecurityGroupArgs {
  /// Name of the network security group
  final pulumi.Input<String> networkSecurityGroupName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkSecurityGroupArgs].
  /// [networkSecurityGroupName] Name of the network security group
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkSecurityGroupArgs({
    required this.networkSecurityGroupName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkSecurityGroupName': networkSecurityGroupName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityGroupArgs(
      networkSecurityGroupName: pulumi.Input.fromValue(map['networkSecurityGroupName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}


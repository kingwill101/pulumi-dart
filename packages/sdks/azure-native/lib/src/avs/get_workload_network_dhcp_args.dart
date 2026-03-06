// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_workload_network_dhcp_args_doc}
/// Arguments for getWorkloadNetworkDhcp.
/// {@endtemplate}
/// {@macro pulumi_avs_get_workload_network_dhcp_args_doc}
class GetWorkloadNetworkDhcpArgs {
  /// The ID of the DHCP configuration
  final pulumi.Input<String> dhcpId;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWorkloadNetworkDhcpArgs].
  /// [dhcpId] The ID of the DHCP configuration
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetWorkloadNetworkDhcpArgs({
    required this.dhcpId,
    required this.privateCloudName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpId': dhcpId,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWorkloadNetworkDhcpArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkDhcpArgs(
      dhcpId: pulumi.Input.fromValue(map['dhcpId'] as String),
      privateCloudName: pulumi.Input.fromValue(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}


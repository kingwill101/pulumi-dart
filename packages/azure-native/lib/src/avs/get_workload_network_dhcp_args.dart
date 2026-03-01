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
  GetWorkloadNetworkDhcpArgs({
    required String dhcpId,
    required String privateCloudName,
    required String resourceGroupName,
  }) :
      dhcpId = pulumi.Input.asInput<String>(dhcpId),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpId': dhcpId,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWorkloadNetworkDhcpArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkDhcpArgs(
      dhcpId: map['dhcpId'] as String,
      privateCloudName: map['privateCloudName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


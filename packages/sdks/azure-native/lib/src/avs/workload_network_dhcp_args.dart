// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_workload_network_dhcp_args_doc}
/// The set of arguments for WorkloadNetworkDhcp.
/// {@endtemplate}
/// {@macro pulumi_avs_workload_network_dhcp_args_doc}
class WorkloadNetworkDhcpArgs {
  /// The ID of the DHCP configuration
  final pulumi.Input<String?>? dhcpId;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<dynamic>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [WorkloadNetworkDhcpArgs].
  /// [dhcpId] The ID of the DHCP configuration
  /// [privateCloudName] Name of the private cloud
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const WorkloadNetworkDhcpArgs({
    this.dhcpId,
    required this.privateCloudName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpId': ?dhcpId,
      'privateCloudName': privateCloudName,
      'properties': ?properties,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory WorkloadNetworkDhcpArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadNetworkDhcpArgs(
      dhcpId: (() { final guardedValue = map['dhcpId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateCloudName: pulumi.Input.fromValue(map['privateCloudName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

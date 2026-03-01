// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_network_dhcp_relay.dart';

/// {@template pulumi_avs_workload_network_dhcp_args_doc}
/// The set of arguments for WorkloadNetworkDhcp.
/// {@endtemplate}
/// {@macro pulumi_avs_workload_network_dhcp_args_doc}
class WorkloadNetworkDhcpArgs {
  /// The ID of the DHCP configuration
  final pulumi.Input<String>? dhcpId;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<WorkloadNetworkDhcpRelay>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [WorkloadNetworkDhcpArgs].
  /// [dhcpId] The ID of the DHCP configuration
  /// [privateCloudName] Name of the private cloud
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  WorkloadNetworkDhcpArgs({
    pulumi.Output<String>? dhcpId,
    required pulumi.Output<String> privateCloudName,
    pulumi.Output<WorkloadNetworkDhcpRelay>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      dhcpId = pulumi.Input.asOptionalInput<String>(dhcpId),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      properties = pulumi.Input.asOptionalInput<WorkloadNetworkDhcpRelay>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpId': ?dhcpId,
      'privateCloudName': privateCloudName,
      'properties': ?pulumi.Input.mapOptionalInputValue<WorkloadNetworkDhcpRelay, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory WorkloadNetworkDhcpArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadNetworkDhcpArgs(
      dhcpId: map['dhcpId'] == null ? null : pulumi.Output.create<String>(map['dhcpId'] as String),
      privateCloudName: pulumi.Output.create<String>(map['privateCloudName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<WorkloadNetworkDhcpRelay>(WorkloadNetworkDhcpRelay.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


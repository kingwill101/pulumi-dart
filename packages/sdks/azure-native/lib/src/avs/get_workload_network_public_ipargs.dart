// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_workload_network_public_ipargs_doc}
/// Arguments for getWorkloadNetworkPublicIP.
/// {@endtemplate}
/// {@macro pulumi_avs_get_workload_network_public_ipargs_doc}
class GetWorkloadNetworkPublicIPArgs {
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// ID of the DNS zone.
  final pulumi.Input<String> publicIPId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWorkloadNetworkPublicIPArgs].
  /// [privateCloudName] Name of the private cloud
  /// [publicIPId] ID of the DNS zone.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetWorkloadNetworkPublicIPArgs({
    required pulumi.Output<String> privateCloudName,
    required pulumi.Output<String> publicIPId,
    required pulumi.Output<String> resourceGroupName,
  }) :
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      publicIPId = pulumi.Input.asInput<String>(publicIPId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateCloudName': privateCloudName,
      'publicIPId': publicIPId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWorkloadNetworkPublicIPArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkPublicIPArgs(
      privateCloudName: pulumi.Output.create<String>(map['privateCloudName'] as String),
      publicIPId: pulumi.Output.create<String>(map['publicIPId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


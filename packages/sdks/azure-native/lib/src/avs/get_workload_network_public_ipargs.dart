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
  const GetWorkloadNetworkPublicIPArgs({
    required this.privateCloudName,
    required this.publicIPId,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateCloudName': privateCloudName,
      'publicIPId': publicIPId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWorkloadNetworkPublicIPArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkPublicIPArgs(
      privateCloudName: pulumi.Input.fromValue(map['privateCloudName'] as String),
      publicIPId: pulumi.Input.fromValue(map['publicIPId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}


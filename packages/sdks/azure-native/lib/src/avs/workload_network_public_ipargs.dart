// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_workload_network_public_ipargs_doc}
/// The set of arguments for WorkloadNetworkPublicIP.
/// {@endtemplate}
/// {@macro pulumi_avs_workload_network_public_ipargs_doc}
class WorkloadNetworkPublicIPArgs {
  /// Display name of the Public IP Block.
  final pulumi.Input<String>? displayName;
  /// Number of Public IPs requested.
  final pulumi.Input<double>? numberOfPublicIPs;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// ID of the DNS zone.
  final pulumi.Input<String>? publicIPId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [WorkloadNetworkPublicIPArgs].
  /// [displayName] Display name of the Public IP Block.
  /// [numberOfPublicIPs] Number of Public IPs requested.
  /// [privateCloudName] Name of the private cloud
  /// [publicIPId] ID of the DNS zone.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  WorkloadNetworkPublicIPArgs({
    this.displayName,
    this.numberOfPublicIPs,
    required this.privateCloudName,
    this.publicIPId,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'numberOfPublicIPs': ?numberOfPublicIPs,
      'privateCloudName': privateCloudName,
      'publicIPId': ?publicIPId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory WorkloadNetworkPublicIPArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadNetworkPublicIPArgs(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      numberOfPublicIPs: map['numberOfPublicIPs'] == null ? null : (map['numberOfPublicIPs'] as double).input(),
      privateCloudName: (map['privateCloudName'] as String).input(),
      publicIPId: map['publicIPId'] == null ? null : (map['publicIPId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}


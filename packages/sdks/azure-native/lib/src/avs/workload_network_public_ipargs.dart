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
  const WorkloadNetworkPublicIPArgs({
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
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfPublicIPs: (() { final guardedValue = map['numberOfPublicIPs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      privateCloudName: pulumi.Input.fromValue(map['privateCloudName'] as String),
      publicIPId: (() { final guardedValue = map['publicIPId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}


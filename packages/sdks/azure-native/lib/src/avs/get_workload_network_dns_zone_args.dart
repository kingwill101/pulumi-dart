// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_workload_network_dns_zone_args_doc}
/// Arguments for getWorkloadNetworkDnsZone.
/// {@endtemplate}
/// {@macro pulumi_avs_get_workload_network_dns_zone_args_doc}
class GetWorkloadNetworkDnsZoneArgs {
  /// ID of the DNS zone.
  final pulumi.Input<String> dnsZoneId;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWorkloadNetworkDnsZoneArgs].
  /// [dnsZoneId] ID of the DNS zone.
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetWorkloadNetworkDnsZoneArgs({
    required this.dnsZoneId,
    required this.privateCloudName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsZoneId': dnsZoneId,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWorkloadNetworkDnsZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkDnsZoneArgs(
      dnsZoneId: pulumi.Input.fromValue(map['dnsZoneId'] as String),
      privateCloudName: pulumi.Input.fromValue(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}


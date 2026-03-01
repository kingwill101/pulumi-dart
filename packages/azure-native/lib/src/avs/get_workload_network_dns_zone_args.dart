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
  GetWorkloadNetworkDnsZoneArgs({
    required String dnsZoneId,
    required String privateCloudName,
    required String resourceGroupName,
  }) :
      dnsZoneId = pulumi.Input.asInput<String>(dnsZoneId),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsZoneId': dnsZoneId,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWorkloadNetworkDnsZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkDnsZoneArgs(
      dnsZoneId: map['dnsZoneId'] as String,
      privateCloudName: map['privateCloudName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


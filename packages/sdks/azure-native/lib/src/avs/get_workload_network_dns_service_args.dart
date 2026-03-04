// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_workload_network_dns_service_args_doc}
/// Arguments for getWorkloadNetworkDnsService.
/// {@endtemplate}
/// {@macro pulumi_avs_get_workload_network_dns_service_args_doc}
class GetWorkloadNetworkDnsServiceArgs {
  /// ID of the DNS service.
  final pulumi.Input<String> dnsServiceId;

  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWorkloadNetworkDnsServiceArgs].
  /// [dnsServiceId] ID of the DNS service.
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetWorkloadNetworkDnsServiceArgs({
    required this.dnsServiceId,
    required this.privateCloudName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServiceId': dnsServiceId,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWorkloadNetworkDnsServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkDnsServiceArgs(
      dnsServiceId: pulumi.Input.fromValue(map['dnsServiceId'] as String),
      privateCloudName: pulumi.Input.fromValue(
        map['privateCloudName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}

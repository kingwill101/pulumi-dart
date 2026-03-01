// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_workload_network_dns_zone_args_doc}
/// The set of arguments for WorkloadNetworkDnsZone.
/// {@endtemplate}
/// {@macro pulumi_avs_workload_network_dns_zone_args_doc}
class WorkloadNetworkDnsZoneArgs {
  /// Display name of the DNS Zone.
  final pulumi.Input<String>? displayName;
  /// DNS Server IP array of the DNS Zone.
  final pulumi.Input<List<String>>? dnsServerIps;
  /// Number of DNS Services using the DNS zone.
  final pulumi.Input<double>? dnsServices;
  /// ID of the DNS zone.
  final pulumi.Input<String>? dnsZoneId;
  /// Domain names of the DNS Zone.
  final pulumi.Input<List<String>>? domain;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// NSX revision number.
  final pulumi.Input<double>? revision;
  /// Source IP of the DNS Zone.
  final pulumi.Input<String>? sourceIp;

  /// Creates a new [WorkloadNetworkDnsZoneArgs].
  /// [displayName] Display name of the DNS Zone.
  /// [dnsServerIps] DNS Server IP array of the DNS Zone.
  /// [dnsServices] Number of DNS Services using the DNS zone.
  /// [dnsZoneId] ID of the DNS zone.
  /// [domain] Domain names of the DNS Zone.
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [revision] NSX revision number.
  /// [sourceIp] Source IP of the DNS Zone.
  WorkloadNetworkDnsZoneArgs({
    String? displayName,
    List<String>? dnsServerIps,
    double? dnsServices,
    String? dnsZoneId,
    List<String>? domain,
    required String privateCloudName,
    required String resourceGroupName,
    double? revision,
    String? sourceIp,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      dnsServerIps = pulumi.Input.asOptionalInput<List<String>>(dnsServerIps),
      dnsServices = pulumi.Input.asOptionalInput<double>(dnsServices),
      dnsZoneId = pulumi.Input.asOptionalInput<String>(dnsZoneId),
      domain = pulumi.Input.asOptionalInput<List<String>>(domain),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      revision = pulumi.Input.asOptionalInput<double>(revision),
      sourceIp = pulumi.Input.asOptionalInput<String>(sourceIp);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'dnsServerIps': ?dnsServerIps,
      'dnsServices': ?dnsServices,
      'dnsZoneId': ?dnsZoneId,
      'domain': ?domain,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
      'revision': ?revision,
      'sourceIp': ?sourceIp,
    };
  }

  factory WorkloadNetworkDnsZoneArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadNetworkDnsZoneArgs(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      dnsServerIps: map['dnsServerIps'] == null ? null : (map['dnsServerIps'] as List).cast<String>(),
      dnsServices: map['dnsServices'] == null ? null : map['dnsServices'] as double,
      dnsZoneId: map['dnsZoneId'] == null ? null : map['dnsZoneId'] as String,
      domain: map['domain'] == null ? null : (map['domain'] as List).cast<String>(),
      privateCloudName: map['privateCloudName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      revision: map['revision'] == null ? null : map['revision'] as double,
      sourceIp: map['sourceIp'] == null ? null : map['sourceIp'] as String,
    );
  }
}


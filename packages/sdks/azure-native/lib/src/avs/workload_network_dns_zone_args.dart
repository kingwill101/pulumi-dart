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
    pulumi.Output<String>? displayName,
    pulumi.Output<List<String>>? dnsServerIps,
    pulumi.Output<double>? dnsServices,
    pulumi.Output<String>? dnsZoneId,
    pulumi.Output<List<String>>? domain,
    required pulumi.Output<String> privateCloudName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<double>? revision,
    pulumi.Output<String>? sourceIp,
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
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      dnsServerIps: map['dnsServerIps'] == null ? null : pulumi.Output.create<List<String>>((map['dnsServerIps'] as List).cast<String>()),
      dnsServices: map['dnsServices'] == null ? null : pulumi.Output.create<double>(map['dnsServices'] as double),
      dnsZoneId: map['dnsZoneId'] == null ? null : pulumi.Output.create<String>(map['dnsZoneId'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<List<String>>((map['domain'] as List).cast<String>()),
      privateCloudName: pulumi.Output.create<String>(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      revision: map['revision'] == null ? null : pulumi.Output.create<double>(map['revision'] as double),
      sourceIp: map['sourceIp'] == null ? null : pulumi.Output.create<String>(map['sourceIp'] as String),
    );
  }
}


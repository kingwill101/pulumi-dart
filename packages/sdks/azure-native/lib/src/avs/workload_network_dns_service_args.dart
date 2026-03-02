// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_workload_network_dns_service_args_doc}
/// The set of arguments for WorkloadNetworkDnsService.
/// {@endtemplate}
/// {@macro pulumi_avs_workload_network_dns_service_args_doc}
class WorkloadNetworkDnsServiceArgs {
  /// Default DNS zone of the DNS Service.
  final pulumi.Input<String>? defaultDnsZone;
  /// Display name of the DNS Service.
  final pulumi.Input<String>? displayName;
  /// ID of the DNS service.
  final pulumi.Input<String>? dnsServiceId;
  /// DNS service IP of the DNS Service.
  final pulumi.Input<String>? dnsServiceIp;
  /// FQDN zones of the DNS Service.
  final pulumi.Input<List<String>>? fqdnZones;
  /// DNS Service log level.
  final pulumi.Input<String>? logLevel;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// NSX revision number.
  final pulumi.Input<double>? revision;

  /// Creates a new [WorkloadNetworkDnsServiceArgs].
  /// [defaultDnsZone] Default DNS zone of the DNS Service.
  /// [displayName] Display name of the DNS Service.
  /// [dnsServiceId] ID of the DNS service.
  /// [dnsServiceIp] DNS service IP of the DNS Service.
  /// [fqdnZones] FQDN zones of the DNS Service.
  /// [logLevel] DNS Service log level.
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [revision] NSX revision number.
  WorkloadNetworkDnsServiceArgs({
    this.defaultDnsZone,
    this.displayName,
    this.dnsServiceId,
    this.dnsServiceIp,
    this.fqdnZones,
    this.logLevel,
    required this.privateCloudName,
    required this.resourceGroupName,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultDnsZone': ?defaultDnsZone,
      'displayName': ?displayName,
      'dnsServiceId': ?dnsServiceId,
      'dnsServiceIp': ?dnsServiceIp,
      'fqdnZones': ?fqdnZones,
      'logLevel': ?logLevel,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
      'revision': ?revision,
    };
  }

  factory WorkloadNetworkDnsServiceArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadNetworkDnsServiceArgs(
      defaultDnsZone: map['defaultDnsZone'] == null ? null : (map['defaultDnsZone'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      dnsServiceId: map['dnsServiceId'] == null ? null : (map['dnsServiceId'] as String).input(),
      dnsServiceIp: map['dnsServiceIp'] == null ? null : (map['dnsServiceIp'] as String).input(),
      fqdnZones: map['fqdnZones'] == null ? null : ((map['fqdnZones'] as List).cast<String>()).input(),
      logLevel: map['logLevel'] == null ? null : (map['logLevel'] as String).input(),
      privateCloudName: (map['privateCloudName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      revision: map['revision'] == null ? null : (map['revision'] as double).input(),
    );
  }
}


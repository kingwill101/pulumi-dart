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
    pulumi.Output<String>? defaultDnsZone,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? dnsServiceId,
    pulumi.Output<String>? dnsServiceIp,
    pulumi.Output<List<String>>? fqdnZones,
    pulumi.Output<String>? logLevel,
    required pulumi.Output<String> privateCloudName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<double>? revision,
  }) :
      defaultDnsZone = pulumi.Input.asOptionalInput<String>(defaultDnsZone),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      dnsServiceId = pulumi.Input.asOptionalInput<String>(dnsServiceId),
      dnsServiceIp = pulumi.Input.asOptionalInput<String>(dnsServiceIp),
      fqdnZones = pulumi.Input.asOptionalInput<List<String>>(fqdnZones),
      logLevel = pulumi.Input.asOptionalInput<String>(logLevel),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      revision = pulumi.Input.asOptionalInput<double>(revision);

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
      defaultDnsZone: map['defaultDnsZone'] == null ? null : pulumi.Output.create<String>(map['defaultDnsZone'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      dnsServiceId: map['dnsServiceId'] == null ? null : pulumi.Output.create<String>(map['dnsServiceId'] as String),
      dnsServiceIp: map['dnsServiceIp'] == null ? null : pulumi.Output.create<String>(map['dnsServiceIp'] as String),
      fqdnZones: map['fqdnZones'] == null ? null : pulumi.Output.create<List<String>>((map['fqdnZones'] as List).cast<String>()),
      logLevel: map['logLevel'] == null ? null : pulumi.Output.create<String>(map['logLevel'] as String),
      privateCloudName: pulumi.Output.create<String>(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      revision: map['revision'] == null ? null : pulumi.Output.create<double>(map['revision'] as double),
    );
  }
}


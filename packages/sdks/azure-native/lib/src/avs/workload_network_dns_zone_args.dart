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
    this.displayName,
    this.dnsServerIps,
    this.dnsServices,
    this.dnsZoneId,
    this.domain,
    required this.privateCloudName,
    required this.resourceGroupName,
    this.revision,
    this.sourceIp,
  });

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
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dnsServerIps: (() {
        final guardedValue = map['dnsServerIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      dnsServices: (() {
        final guardedValue = map['dnsServices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      dnsZoneId: (() {
        final guardedValue = map['dnsZoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domain: (() {
        final guardedValue = map['domain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      privateCloudName: pulumi.Input.fromValue(
        map['privateCloudName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      revision: (() {
        final guardedValue = map['revision'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      sourceIp: (() {
        final guardedValue = map['sourceIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

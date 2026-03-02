// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_pools_response.dart';

/// The InfrastructureNetwork of a AzureStackHCI Cluster.
class InfrastructureNetworkResponse {
  /// IPv4 address of the DNS servers in your environment.
  final pulumi.Input<List<String>>? dnsServers;
  /// Default gateway that should be used for the provided IP address space.
  final pulumi.Input<String>? gateway;
  /// Range of IP addresses from which addresses are allocated for nodes within a subnet.
  final pulumi.Input<List<IpPoolsResponse>>? ipPools;
  /// Subnet mask that matches the provided IP address space.
  final pulumi.Input<String>? subnetMask;
  /// Allows customers to use DHCP for Hosts and Cluster IPs. If not declared, the deployment will default to static IPs. When true, GW and DNS servers are not required
  final pulumi.Input<bool>? useDhcp;

  /// Creates a new [InfrastructureNetworkResponse].
  /// [dnsServers] IPv4 address of the DNS servers in your environment.
  /// [gateway] Default gateway that should be used for the provided IP address space.
  /// [ipPools] Range of IP addresses from which addresses are allocated for nodes within a subnet.
  /// [subnetMask] Subnet mask that matches the provided IP address space.
  /// [useDhcp] Allows customers to use DHCP for Hosts and Cluster IPs. If not declared, the deployment will default to static IPs. When true, GW and DNS servers are not required
  InfrastructureNetworkResponse({
    this.dnsServers,
    this.gateway,
    this.ipPools,
    this.subnetMask,
    this.useDhcp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
      'gateway': ?gateway,
      'ipPools': ?pulumi.Input.mapOptionalInputValue<List<IpPoolsResponse>, List<Map<String, dynamic>>>(ipPools, (value) => pulumi.Input.encodeList<IpPoolsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetMask': ?subnetMask,
      'useDhcp': ?useDhcp,
    };
  }

  factory InfrastructureNetworkResponse.fromMap(Map<String, dynamic> map) {
    return InfrastructureNetworkResponse(
      dnsServers: map['dnsServers'] == null ? null : ((map['dnsServers'] as List).cast<String>()).input(),
      gateway: map['gateway'] == null ? null : (map['gateway'] as String).input(),
      ipPools: map['ipPools'] == null ? null : (pulumi.Input.decodeList<IpPoolsResponse>(map['ipPools'], (value) => IpPoolsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subnetMask: map['subnetMask'] == null ? null : (map['subnetMask'] as String).input(),
      useDhcp: map['useDhcp'] == null ? null : (map['useDhcp'] as bool).input(),
    );
  }
}


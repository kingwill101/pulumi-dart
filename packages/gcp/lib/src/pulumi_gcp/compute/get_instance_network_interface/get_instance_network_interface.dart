// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instance_network_interface_access_config/get_instance_network_interface_access_config.dart';
import '../get_instance_network_interface_alias_ip_range/get_instance_network_interface_alias_ip_range.dart';
import '../get_instance_network_interface_ipv6_access_config/get_instance_network_interface_ipv6_access_config.dart';

class GetInstanceNetworkInterface {
  /// Access configurations, i.e. IPs via which this
  /// instance can be accessed via the Internet. Structure documented below.
  final List<GetInstanceNetworkInterfaceAccessConfig> accessConfigs;

  /// An array of alias IP ranges for this network interface. Structure documented below.
  final List<GetInstanceNetworkInterfaceAliasIpRange> aliasIpRanges;

  /// Indicates whether igmp query is enabled on the network interface or not. If enabled, also indicates the version of IGMP supported.
  final String igmpQuery;

  /// The prefix length of the primary internal IPv6 range.
  final int internalIpv6PrefixLength;

  /// An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access.
  final List<GetInstanceNetworkInterfaceIpv6AccessConfig> ipv6AccessConfigs;

  /// One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork.
  final String ipv6AccessType;

  /// An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  final String ipv6Address;

  /// MAC address assigned to this network interface.
  final String macAddress;

  /// The name of the instance. One of `name` or `self_link` must be provided.
  final String name;

  /// The name or self_link of the network attached to this interface.
  final String network;

  /// The URL of the network attachment to this interface.
  final String networkAttachment;

  /// The internal ip address of the instance, either manually or dynamically assigned.
  final String networkIp;

  /// The type of vNIC to be used on this interface. Possible values:GVNIC, VIRTIO_NET, IDPF, MRDMA, and IRDMA
  final String nicType;

  /// The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified.
  final int queueCount;

  /// A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  final String securityPolicy;

  /// The stack type for this network interface to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used.
  final String stackType;

  /// The name or self_link of the subnetwork attached to this interface.
  final String subnetwork;

  /// The project in which the subnetwork belongs.
  final String subnetworkProject;

  GetInstanceNetworkInterface({
    required this.accessConfigs,
    required this.aliasIpRanges,
    required this.igmpQuery,
    required this.internalIpv6PrefixLength,
    required this.ipv6AccessConfigs,
    required this.ipv6AccessType,
    required this.ipv6Address,
    required this.macAddress,
    required this.name,
    required this.network,
    required this.networkAttachment,
    required this.networkIp,
    required this.nicType,
    required this.queueCount,
    required this.securityPolicy,
    required this.stackType,
    required this.subnetwork,
    required this.subnetworkProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessConfigs'] = pulumi.Input.encodeList<
        GetInstanceNetworkInterfaceAccessConfig,
        Map<String, dynamic>>(accessConfigs, (value) => value.toMap());
    map['aliasIpRanges'] = pulumi.Input.encodeList<
        GetInstanceNetworkInterfaceAliasIpRange,
        Map<String, dynamic>>(aliasIpRanges, (value) => value.toMap());
    map['igmpQuery'] = igmpQuery;
    map['internalIpv6PrefixLength'] = internalIpv6PrefixLength;
    map['ipv6AccessConfigs'] = pulumi.Input.encodeList<
        GetInstanceNetworkInterfaceIpv6AccessConfig,
        Map<String, dynamic>>(ipv6AccessConfigs, (value) => value.toMap());
    map['ipv6AccessType'] = ipv6AccessType;
    map['ipv6Address'] = ipv6Address;
    map['macAddress'] = macAddress;
    map['name'] = name;
    map['network'] = network;
    map['networkAttachment'] = networkAttachment;
    map['networkIp'] = networkIp;
    map['nicType'] = nicType;
    map['queueCount'] = queueCount;
    map['securityPolicy'] = securityPolicy;
    map['stackType'] = stackType;
    map['subnetwork'] = subnetwork;
    map['subnetworkProject'] = subnetworkProject;
    return map;
  }

  factory GetInstanceNetworkInterface.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkInterface(
      accessConfigs:
          pulumi.Input.decodeList<GetInstanceNetworkInterfaceAccessConfig>(
              map['accessConfigs'],
              (value) => GetInstanceNetworkInterfaceAccessConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      aliasIpRanges:
          pulumi.Input.decodeList<GetInstanceNetworkInterfaceAliasIpRange>(
              map['aliasIpRanges'],
              (value) => GetInstanceNetworkInterfaceAliasIpRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      igmpQuery: map['igmpQuery'] as String,
      internalIpv6PrefixLength: map['internalIpv6PrefixLength'] as int,
      ipv6AccessConfigs:
          pulumi.Input.decodeList<GetInstanceNetworkInterfaceIpv6AccessConfig>(
              map['ipv6AccessConfigs'],
              (value) => GetInstanceNetworkInterfaceIpv6AccessConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ipv6AccessType: map['ipv6AccessType'] as String,
      ipv6Address: map['ipv6Address'] as String,
      macAddress: map['macAddress'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      networkAttachment: map['networkAttachment'] as String,
      networkIp: map['networkIp'] as String,
      nicType: map['nicType'] as String,
      queueCount: map['queueCount'] as int,
      securityPolicy: map['securityPolicy'] as String,
      stackType: map['stackType'] as String,
      subnetwork: map['subnetwork'] as String,
      subnetworkProject: map['subnetworkProject'] as String,
    );
  }
}

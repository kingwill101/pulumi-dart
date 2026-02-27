// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_template_network_interface_access_config/get_instance_template_network_interface_access_config.dart';
import '../get_instance_template_network_interface_alias_ip_range/get_instance_template_network_interface_alias_ip_range.dart';
import '../get_instance_template_network_interface_ipv6_access_config/get_instance_template_network_interface_ipv6_access_config.dart';

class GetInstanceTemplateNetworkInterface {
  /// Access configurations, i.e. IPs via which this
  /// instance can be accessed via the Internet. Omit to ensure that the instance
  /// is not accessible from the Internet (this means that ssh provisioners will
  /// not work unless you are running the provider can send traffic to the instance's
  /// network (e.g. via tunnel or because it is running on another cloud instance
  /// on that network). This block can be repeated multiple times. Structure documented below.
  final List<GetInstanceTemplateNetworkInterfaceAccessConfig> accessConfigs;

  /// An
  /// array of alias IP ranges for this network interface. Can only be specified for network
  /// interfaces on subnet-mode networks. Structure documented below.
  final List<GetInstanceTemplateNetworkInterfaceAliasIpRange> aliasIpRanges;

  /// Indicates whether igmp query is enabled on the network interface or not. If enabled, also indicates the version of IGMP supported.
  final String igmpQuery;

  /// The prefix length of the primary internal IPv6 range.
  final int internalIpv6PrefixLength;

  /// An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access.
  final List<GetInstanceTemplateNetworkInterfaceIpv6AccessConfig>
      ipv6AccessConfigs;

  /// One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork.
  final String ipv6AccessType;

  /// An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  final String ipv6Address;

  /// The name of the instance template. One of `name`, `filter` or `self_link_unique` must be provided.
  final String name;

  /// The name or self_link of the network to attach this interface to.
  /// Use `network` attribute for Legacy or Auto subnetted networks and
  /// `subnetwork` for custom subnetted networks.
  final String network;

  /// The URL of the network attachment that this interface should connect to in the following format: projects/{projectNumber}/regions/{region_name}/networkAttachments/{network_attachment_name}.
  final String networkAttachment;

  /// The private IP address to assign to the instance. If
  /// empty, the address will be automatically assigned.
  final String networkIp;

  /// The type of vNIC to be used on this interface. Possible values:GVNIC, VIRTIO_NET, MRDMA, and IRDMA
  final String nicType;

  /// The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified.
  final int queueCount;

  /// The stack type for this network interface to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used.
  final String stackType;

  /// the name of the subnetwork to attach this interface
  /// to. The subnetwork must exist in the same `region` this instance will be
  /// created in. Either `network` or `subnetwork` must be provided.
  final String subnetwork;

  /// The ID of the project in which the subnetwork belongs.
  /// If it is not provided, the provider project is used.
  final String subnetworkProject;

  GetInstanceTemplateNetworkInterface({
    required this.accessConfigs,
    required this.aliasIpRanges,
    required this.igmpQuery,
    required this.internalIpv6PrefixLength,
    required this.ipv6AccessConfigs,
    required this.ipv6AccessType,
    required this.ipv6Address,
    required this.name,
    required this.network,
    required this.networkAttachment,
    required this.networkIp,
    required this.nicType,
    required this.queueCount,
    required this.stackType,
    required this.subnetwork,
    required this.subnetworkProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessConfigs'] = Input.encodeList<
        GetInstanceTemplateNetworkInterfaceAccessConfig,
        Map<String, dynamic>>(accessConfigs, (value) => value.toMap());
    map['aliasIpRanges'] = Input.encodeList<
        GetInstanceTemplateNetworkInterfaceAliasIpRange,
        Map<String, dynamic>>(aliasIpRanges, (value) => value.toMap());
    map['igmpQuery'] = igmpQuery;
    map['internalIpv6PrefixLength'] = internalIpv6PrefixLength;
    map['ipv6AccessConfigs'] = Input.encodeList<
        GetInstanceTemplateNetworkInterfaceIpv6AccessConfig,
        Map<String, dynamic>>(ipv6AccessConfigs, (value) => value.toMap());
    map['ipv6AccessType'] = ipv6AccessType;
    map['ipv6Address'] = ipv6Address;
    map['name'] = name;
    map['network'] = network;
    map['networkAttachment'] = networkAttachment;
    map['networkIp'] = networkIp;
    map['nicType'] = nicType;
    map['queueCount'] = queueCount;
    map['stackType'] = stackType;
    map['subnetwork'] = subnetwork;
    map['subnetworkProject'] = subnetworkProject;
    return map;
  }

  factory GetInstanceTemplateNetworkInterface.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceTemplateNetworkInterface(
      accessConfigs:
          Input.decodeList<GetInstanceTemplateNetworkInterfaceAccessConfig>(
              map['accessConfigs'],
              (value) =>
                  GetInstanceTemplateNetworkInterfaceAccessConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      aliasIpRanges:
          Input.decodeList<GetInstanceTemplateNetworkInterfaceAliasIpRange>(
              map['aliasIpRanges'],
              (value) =>
                  GetInstanceTemplateNetworkInterfaceAliasIpRange.fromMap(
                      (value as Map).cast<String, dynamic>())),
      igmpQuery: map['igmpQuery'] as String,
      internalIpv6PrefixLength: map['internalIpv6PrefixLength'] as int,
      ipv6AccessConfigs:
          Input.decodeList<GetInstanceTemplateNetworkInterfaceIpv6AccessConfig>(
              map['ipv6AccessConfigs'],
              (value) =>
                  GetInstanceTemplateNetworkInterfaceIpv6AccessConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      ipv6AccessType: map['ipv6AccessType'] as String,
      ipv6Address: map['ipv6Address'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      networkAttachment: map['networkAttachment'] as String,
      networkIp: map['networkIp'] as String,
      nicType: map['nicType'] as String,
      queueCount: map['queueCount'] as int,
      stackType: map['stackType'] as String,
      subnetwork: map['subnetwork'] as String,
      subnetworkProject: map['subnetworkProject'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_template_network_interface_access_config.dart';
import 'get_region_instance_template_network_interface_alias_ip_range.dart';
import 'get_region_instance_template_network_interface_ipv6_access_config.dart';

class GetRegionInstanceTemplateNetworkInterface {
  final List<GetRegionInstanceTemplateNetworkInterfaceAccessConfig>
      accessConfigs;

  /// An
  /// array of alias IP ranges for this network interface. Can only be specified for network
  /// interfaces on subnet-mode networks. Structure documented below.
  final List<GetRegionInstanceTemplateNetworkInterfaceAliasIpRange>
      aliasIpRanges;

  /// Indicates whether igmp query is enabled on the network interface or not. If enabled, also indicates the version of IGMP supported.
  final String igmpQuery;

  /// The prefix length of the primary internal IPv6 range.
  final int internalIpv6PrefixLength;

  /// An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access.
  final List<GetRegionInstanceTemplateNetworkInterfaceIpv6AccessConfig>
      ipv6AccessConfigs;

  /// One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork.
  final String ipv6AccessType;

  /// An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  final String ipv6Address;

  /// The name of the instance template. One of `name` or `filter` must be provided.
  final String name;

  /// The name or self_link of the network to attach this interface to.
  /// Use `network` attribute for Legacy or Auto subnetted networks and
  /// `subnetwork` for custom subnetted networks.
  final String network;

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

  /// Creates a new [GetRegionInstanceTemplateNetworkInterface].
  /// [accessConfigs] Required.
  /// [aliasIpRanges] An
  /// [igmpQuery] Indicates whether igmp query is enabled on the network interface or not. If enabled, also indicates the version of IGMP supported.
  /// [internalIpv6PrefixLength] The prefix length of the primary internal IPv6 range.
  /// [ipv6AccessConfigs] An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access.
  /// [ipv6AccessType] One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork.
  /// [ipv6Address] An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  /// [name] The name of the instance template. One of `name` or `filter` must be provided.
  /// [network] The name or self_link of the network to attach this interface to.
  /// [networkIp] The private IP address to assign to the instance. If
  /// [nicType] The type of vNIC to be used on this interface. Possible values:GVNIC, VIRTIO_NET, MRDMA, and IRDMA
  /// [queueCount] The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified.
  /// [stackType] The stack type for this network interface to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used.
  /// [subnetwork] the name of the subnetwork to attach this interface
  /// [subnetworkProject] The ID of the project in which the subnetwork belongs.
  GetRegionInstanceTemplateNetworkInterface({
    required this.accessConfigs,
    required this.aliasIpRanges,
    required this.igmpQuery,
    required this.internalIpv6PrefixLength,
    required this.ipv6AccessConfigs,
    required this.ipv6AccessType,
    required this.ipv6Address,
    required this.name,
    required this.network,
    required this.networkIp,
    required this.nicType,
    required this.queueCount,
    required this.stackType,
    required this.subnetwork,
    required this.subnetworkProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessConfigs'] = pulumi.Input.encodeList<
        GetRegionInstanceTemplateNetworkInterfaceAccessConfig,
        Map<String, dynamic>>(accessConfigs, (value) => value.toMap());
    map['aliasIpRanges'] = pulumi.Input.encodeList<
        GetRegionInstanceTemplateNetworkInterfaceAliasIpRange,
        Map<String, dynamic>>(aliasIpRanges, (value) => value.toMap());
    map['igmpQuery'] = igmpQuery;
    map['internalIpv6PrefixLength'] = internalIpv6PrefixLength;
    map['ipv6AccessConfigs'] = pulumi.Input.encodeList<
        GetRegionInstanceTemplateNetworkInterfaceIpv6AccessConfig,
        Map<String, dynamic>>(ipv6AccessConfigs, (value) => value.toMap());
    map['ipv6AccessType'] = ipv6AccessType;
    map['ipv6Address'] = ipv6Address;
    map['name'] = name;
    map['network'] = network;
    map['networkIp'] = networkIp;
    map['nicType'] = nicType;
    map['queueCount'] = queueCount;
    map['stackType'] = stackType;
    map['subnetwork'] = subnetwork;
    map['subnetworkProject'] = subnetworkProject;
    return map;
  }

  factory GetRegionInstanceTemplateNetworkInterface.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceTemplateNetworkInterface(
      accessConfigs: pulumi.Input.decodeList<
              GetRegionInstanceTemplateNetworkInterfaceAccessConfig>(
          map['accessConfigs'],
          (value) =>
              GetRegionInstanceTemplateNetworkInterfaceAccessConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      aliasIpRanges: pulumi.Input.decodeList<
              GetRegionInstanceTemplateNetworkInterfaceAliasIpRange>(
          map['aliasIpRanges'],
          (value) =>
              GetRegionInstanceTemplateNetworkInterfaceAliasIpRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      igmpQuery: map['igmpQuery'] as String,
      internalIpv6PrefixLength: map['internalIpv6PrefixLength'] as int,
      ipv6AccessConfigs: pulumi.Input.decodeList<
              GetRegionInstanceTemplateNetworkInterfaceIpv6AccessConfig>(
          map['ipv6AccessConfigs'],
          (value) =>
              GetRegionInstanceTemplateNetworkInterfaceIpv6AccessConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ipv6AccessType: map['ipv6AccessType'] as String,
      ipv6Address: map['ipv6Address'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      networkIp: map['networkIp'] as String,
      nicType: map['nicType'] as String,
      queueCount: map['queueCount'] as int,
      stackType: map['stackType'] as String,
      subnetwork: map['subnetwork'] as String,
      subnetworkProject: map['subnetworkProject'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_region_instance_template_network_interface_access_config/get_region_instance_template_network_interface_access_config.dart';
import '../get_region_instance_template_network_interface_alias_ip_range/get_region_instance_template_network_interface_alias_ip_range.dart';
import '../get_region_instance_template_network_interface_ipv6_access_config/get_region_instance_template_network_interface_ipv6_access_config.dart';

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

  /// The name of the instance template. One of <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> must be provided.
  final String name;

  /// The name or<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>of the network to attach this interface to.
  /// Use <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span> attribute for Legacy or Auto subnetted networks and
  /// <span pulumi-lang-nodejs="`subnetwork`" pulumi-lang-dotnet="`Subnetwork`" pulumi-lang-go="`subnetwork`" pulumi-lang-python="`subnetwork`" pulumi-lang-yaml="`subnetwork`" pulumi-lang-java="`subnetwork`">`subnetwork`</span> for custom subnetted networks.
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
  /// to. The subnetwork must exist in the same <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> this instance will be
  /// created in. Either <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span> or <span pulumi-lang-nodejs="`subnetwork`" pulumi-lang-dotnet="`Subnetwork`" pulumi-lang-go="`subnetwork`" pulumi-lang-python="`subnetwork`" pulumi-lang-yaml="`subnetwork`" pulumi-lang-java="`subnetwork`">`subnetwork`</span> must be provided.
  final String subnetwork;

  /// The ID of the project in which the subnetwork belongs.
  /// If it is not provided, the provider project is used.
  final String subnetworkProject;

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
    map['accessConfigs'] = Input.encodeList<
        GetRegionInstanceTemplateNetworkInterfaceAccessConfig,
        Map<String, dynamic>>(accessConfigs, (value) => value.toMap());
    map['aliasIpRanges'] = Input.encodeList<
        GetRegionInstanceTemplateNetworkInterfaceAliasIpRange,
        Map<String, dynamic>>(aliasIpRanges, (value) => value.toMap());
    map['igmpQuery'] = igmpQuery;
    map['internalIpv6PrefixLength'] = internalIpv6PrefixLength;
    map['ipv6AccessConfigs'] = Input.encodeList<
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
      accessConfigs: Input.decodeList<
              GetRegionInstanceTemplateNetworkInterfaceAccessConfig>(
          map['accessConfigs'],
          (value) =>
              GetRegionInstanceTemplateNetworkInterfaceAccessConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      aliasIpRanges: Input.decodeList<
              GetRegionInstanceTemplateNetworkInterfaceAliasIpRange>(
          map['aliasIpRanges'],
          (value) =>
              GetRegionInstanceTemplateNetworkInterfaceAliasIpRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      igmpQuery: map['igmpQuery'] as String,
      internalIpv6PrefixLength: map['internalIpv6PrefixLength'] as int,
      ipv6AccessConfigs: Input.decodeList<
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

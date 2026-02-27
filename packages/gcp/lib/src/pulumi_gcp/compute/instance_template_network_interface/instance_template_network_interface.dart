// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_template_network_interface_access_config/instance_template_network_interface_access_config.dart';
import '../instance_template_network_interface_alias_ip_range/instance_template_network_interface_alias_ip_range.dart';
import '../instance_template_network_interface_ipv6_access_config/instance_template_network_interface_ipv6_access_config.dart';

class InstanceTemplateNetworkInterface {
  /// Access configurations, i.e. IPs via which this
  /// instance can be accessed via the Internet. Omit to ensure that the instance
  /// is not accessible from the Internet (this means that ssh provisioners will
  /// not work unless you can send traffic to the instance's
  /// network (e.g. via tunnel or because it is running on another cloud instance
  /// on that network). This block can be specified once per `network_interface`. Structure documented below.
  final List<InstanceTemplateNetworkInterfaceAccessConfig>? accessConfigs;

  /// An
  /// array of alias IP ranges for this network interface. Can only be specified for network
  /// interfaces on subnet-mode networks. Structure documented below.
  final List<InstanceTemplateNetworkInterfaceAliasIpRange>? aliasIpRanges;

  /// Indicates whether igmp query is enabled on the network interface or not. If enabled, also indicates the version of IGMP supported.
  final String? igmpQuery;

  /// The prefix length of the primary internal IPv6 range.
  final int? internalIpv6PrefixLength;

  /// An array of IPv6 access configurations for this interface.
  /// Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig
  /// specified, then this instance will have no external IPv6 Internet access. Structure documented below.
  final List<InstanceTemplateNetworkInterfaceIpv6AccessConfig>?
      ipv6AccessConfigs;

  /// One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet. This field is always inherited from its subnetwork.
  final String? ipv6AccessType;

  /// An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  final String? ipv6Address;

  /// The name of the instance template. If you leave
  /// this blank, the provider will auto-generate a unique name.
  final String? name;

  /// The name or self_link of the network to attach this interface to.
  /// Use `network` attribute for Legacy or Auto subnetted networks and
  /// `subnetwork` for custom subnetted networks.
  final String? network;

  /// The URL of the network attachment that this interface should connect to in the following format: projects/{projectNumber}/regions/{region_name}/networkAttachments/{network_attachment_name}.
  final String? networkAttachment;

  /// The private IP address to assign to the instance. If
  /// empty, the address will be automatically assigned.
  final String? networkIp;

  /// The type of vNIC to be used on this interface. Possible values: GVNIC, VIRTIO_NET, MRDMA, IRDMA.
  final String? nicType;

  /// The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified.
  final int? queueCount;

  /// The stack type for this network interface to identify whether the IPv6 feature is enabled or not. Values are IPV4_IPV6, IPV6_ONLY or IPV4_ONLY. If not specified, IPV4_ONLY will be used.
  final String? stackType;

  /// the name of the subnetwork to attach this interface
  /// to. The subnetwork must exist in the same `region` this instance will be
  /// created in. Either `network` or `subnetwork` must be provided.
  final String? subnetwork;

  /// The ID of the project in which the subnetwork belongs.
  /// If it is not provided, the provider project is used.
  final String? subnetworkProject;

  InstanceTemplateNetworkInterface({
    this.accessConfigs,
    this.aliasIpRanges,
    this.igmpQuery,
    this.internalIpv6PrefixLength,
    this.ipv6AccessConfigs,
    this.ipv6AccessType,
    this.ipv6Address,
    this.name,
    this.network,
    this.networkAttachment,
    this.networkIp,
    this.nicType,
    this.queueCount,
    this.stackType,
    this.subnetwork,
    this.subnetworkProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessConfigsValue = accessConfigs;
    if (accessConfigsValue != null) {
      map['accessConfigs'] = pulumi.Input.encodeList<
          InstanceTemplateNetworkInterfaceAccessConfig,
          Map<String, dynamic>>(accessConfigsValue, (value) => value.toMap());
    }
    final aliasIpRangesValue = aliasIpRanges;
    if (aliasIpRangesValue != null) {
      map['aliasIpRanges'] = pulumi.Input.encodeList<
          InstanceTemplateNetworkInterfaceAliasIpRange,
          Map<String, dynamic>>(aliasIpRangesValue, (value) => value.toMap());
    }
    final igmpQueryValue = igmpQuery;
    if (igmpQueryValue != null) {
      map['igmpQuery'] = igmpQueryValue;
    }
    final internalIpv6PrefixLengthValue = internalIpv6PrefixLength;
    if (internalIpv6PrefixLengthValue != null) {
      map['internalIpv6PrefixLength'] = internalIpv6PrefixLengthValue;
    }
    final ipv6AccessConfigsValue = ipv6AccessConfigs;
    if (ipv6AccessConfigsValue != null) {
      map['ipv6AccessConfigs'] = pulumi.Input.encodeList<
              InstanceTemplateNetworkInterfaceIpv6AccessConfig,
              Map<String, dynamic>>(
          ipv6AccessConfigsValue, (value) => value.toMap());
    }
    final ipv6AccessTypeValue = ipv6AccessType;
    if (ipv6AccessTypeValue != null) {
      map['ipv6AccessType'] = ipv6AccessTypeValue;
    }
    final ipv6AddressValue = ipv6Address;
    if (ipv6AddressValue != null) {
      map['ipv6Address'] = ipv6AddressValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final networkAttachmentValue = networkAttachment;
    if (networkAttachmentValue != null) {
      map['networkAttachment'] = networkAttachmentValue;
    }
    final networkIpValue = networkIp;
    if (networkIpValue != null) {
      map['networkIp'] = networkIpValue;
    }
    final nicTypeValue = nicType;
    if (nicTypeValue != null) {
      map['nicType'] = nicTypeValue;
    }
    final queueCountValue = queueCount;
    if (queueCountValue != null) {
      map['queueCount'] = queueCountValue;
    }
    final stackTypeValue = stackType;
    if (stackTypeValue != null) {
      map['stackType'] = stackTypeValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    final subnetworkProjectValue = subnetworkProject;
    if (subnetworkProjectValue != null) {
      map['subnetworkProject'] = subnetworkProjectValue;
    }
    return map;
  }

  factory InstanceTemplateNetworkInterface.fromMap(Map<String, dynamic> map) {
    return InstanceTemplateNetworkInterface(
      accessConfigs: map['accessConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  InstanceTemplateNetworkInterfaceAccessConfig>(
              map['accessConfigs'],
              (value) => InstanceTemplateNetworkInterfaceAccessConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      aliasIpRanges: map['aliasIpRanges'] == null
          ? null
          : pulumi.Input.decodeList<
                  InstanceTemplateNetworkInterfaceAliasIpRange>(
              map['aliasIpRanges'],
              (value) => InstanceTemplateNetworkInterfaceAliasIpRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      igmpQuery: map['igmpQuery'] == null ? null : map['igmpQuery'] as String,
      internalIpv6PrefixLength: map['internalIpv6PrefixLength'] == null
          ? null
          : map['internalIpv6PrefixLength'] as int,
      ipv6AccessConfigs: map['ipv6AccessConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  InstanceTemplateNetworkInterfaceIpv6AccessConfig>(
              map['ipv6AccessConfigs'],
              (value) =>
                  InstanceTemplateNetworkInterfaceIpv6AccessConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      ipv6AccessType: map['ipv6AccessType'] == null
          ? null
          : map['ipv6AccessType'] as String,
      ipv6Address:
          map['ipv6Address'] == null ? null : map['ipv6Address'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      networkAttachment: map['networkAttachment'] == null
          ? null
          : map['networkAttachment'] as String,
      networkIp: map['networkIp'] == null ? null : map['networkIp'] as String,
      nicType: map['nicType'] == null ? null : map['nicType'] as String,
      queueCount: map['queueCount'] == null ? null : map['queueCount'] as int,
      stackType: map['stackType'] == null ? null : map['stackType'] as String,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
      subnetworkProject: map['subnetworkProject'] == null
          ? null
          : map['subnetworkProject'] as String,
    );
  }
}

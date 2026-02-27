// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_network_interface_access_config/instance_network_interface_access_config.dart';
import '../instance_network_interface_alias_ip_range/instance_network_interface_alias_ip_range.dart';
import '../instance_network_interface_ipv6_access_config/instance_network_interface_ipv6_access_config.dart';

class InstanceNetworkInterface {
  /// Access configurations, i.e. IPs via which this instance can be accessed via the Internet.
  final List<InstanceNetworkInterfaceAccessConfig>? accessConfigs;

  /// An
  /// array of alias IP ranges for this network interface. Can only be specified for network
  /// interfaces on subnet-mode networks. Structure documented below.
  final List<InstanceNetworkInterfaceAliasIpRange>? aliasIpRanges;

  /// Indicates whether igmp query is enabled on the network interface or not. If enabled, also indicates the version of IGMP supported.
  final String? igmpQuery;

  /// The prefix length of the primary internal IPv6 range.
  final int? internalIpv6PrefixLength;

  /// An array of IPv6 access configurations for this interface.
  /// Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig
  /// specified, then this instance will have no external IPv6 Internet access. Structure documented below.
  final List<InstanceNetworkInterfaceIpv6AccessConfig>? ipv6AccessConfigs;

  /// One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from the Internet.
  /// This field is always inherited from its subnetwork.
  final String? ipv6AccessType;

  /// An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  final String? ipv6Address;

  /// [Beta] MAC address assigned to this network interface
  final String? macAddress;

  /// A unique name for the resource, required by GCE.
  /// Changing this forces a new resource to be created.
  final String? name;

  /// The name or self_link of the network to attach this interface to.
  /// Either `network` or `subnetwork` must be provided. If network isn't provided it will
  /// be inferred from the subnetwork.
  final String? network;

  /// The URL of the network attachment that this interface should connect to in the following format: `projects/{projectNumber}/regions/{region_name}/networkAttachments/{network_attachment_name}`.
  final String? networkAttachment;

  /// The private IP address to assign to the instance. If
  /// empty, the address will be automatically assigned.
  final String? networkIp;

  /// The type of vNIC to be used on this interface. Possible values: GVNIC, VIRTIO_NET, IDPF, MRDMA, IRDMA.
  final String? nicType;

  /// The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified.
  final int? queueCount;

  /// A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  final String? securityPolicy;

  /// The stack type for this network interface to identify whether the IPv6 feature is enabled or not. Values are IPV4_IPV6, IPV6_ONLY or IPV4_ONLY. If not specified, IPV4_ONLY will be used.
  final String? stackType;

  /// The name or self_link of the subnetwork to attach this
  /// interface to. Either `network` or `subnetwork` must be provided. If network isn't provided
  /// it will be inferred from the subnetwork. The subnetwork must exist in the same region this
  /// instance will be created in. If the network resource is in
  /// [legacy](https://cloud.google.com/vpc/docs/legacy) mode, do not specify this field. If the
  /// network is in auto subnet mode, specifying the subnetwork is optional. If the network is
  /// in custom subnet mode, specifying the subnetwork is required.
  final String? subnetwork;

  /// The project in which the subnetwork belongs.
  /// If the `subnetwork` is a self_link, this field is set to the project
  /// defined in the subnetwork self_link. If the `subnetwork` is a name and this
  /// field is not provided, the provider project is used.
  final String? subnetworkProject;

  InstanceNetworkInterface({
    this.accessConfigs,
    this.aliasIpRanges,
    this.igmpQuery,
    this.internalIpv6PrefixLength,
    this.ipv6AccessConfigs,
    this.ipv6AccessType,
    this.ipv6Address,
    this.macAddress,
    this.name,
    this.network,
    this.networkAttachment,
    this.networkIp,
    this.nicType,
    this.queueCount,
    this.securityPolicy,
    this.stackType,
    this.subnetwork,
    this.subnetworkProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessConfigsValue = accessConfigs;
    if (accessConfigsValue != null) {
      map['accessConfigs'] = Input.encodeList<
          InstanceNetworkInterfaceAccessConfig,
          Map<String, dynamic>>(accessConfigsValue, (value) => value.toMap());
    }
    final aliasIpRangesValue = aliasIpRanges;
    if (aliasIpRangesValue != null) {
      map['aliasIpRanges'] = Input.encodeList<
          InstanceNetworkInterfaceAliasIpRange,
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
      map['ipv6AccessConfigs'] = Input.encodeList<
              InstanceNetworkInterfaceIpv6AccessConfig, Map<String, dynamic>>(
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
    final macAddressValue = macAddress;
    if (macAddressValue != null) {
      map['macAddress'] = macAddressValue;
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
    final securityPolicyValue = securityPolicy;
    if (securityPolicyValue != null) {
      map['securityPolicy'] = securityPolicyValue;
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

  factory InstanceNetworkInterface.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkInterface(
      accessConfigs: map['accessConfigs'] == null
          ? null
          : Input.decodeList<InstanceNetworkInterfaceAccessConfig>(
              map['accessConfigs'],
              (value) => InstanceNetworkInterfaceAccessConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      aliasIpRanges: map['aliasIpRanges'] == null
          ? null
          : Input.decodeList<InstanceNetworkInterfaceAliasIpRange>(
              map['aliasIpRanges'],
              (value) => InstanceNetworkInterfaceAliasIpRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      igmpQuery: map['igmpQuery'] == null ? null : map['igmpQuery'] as String,
      internalIpv6PrefixLength: map['internalIpv6PrefixLength'] == null
          ? null
          : map['internalIpv6PrefixLength'] as int,
      ipv6AccessConfigs: map['ipv6AccessConfigs'] == null
          ? null
          : Input.decodeList<InstanceNetworkInterfaceIpv6AccessConfig>(
              map['ipv6AccessConfigs'],
              (value) => InstanceNetworkInterfaceIpv6AccessConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ipv6AccessType: map['ipv6AccessType'] == null
          ? null
          : map['ipv6AccessType'] as String,
      ipv6Address:
          map['ipv6Address'] == null ? null : map['ipv6Address'] as String,
      macAddress:
          map['macAddress'] == null ? null : map['macAddress'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      networkAttachment: map['networkAttachment'] == null
          ? null
          : map['networkAttachment'] as String,
      networkIp: map['networkIp'] == null ? null : map['networkIp'] as String,
      nicType: map['nicType'] == null ? null : map['nicType'] as String,
      queueCount: map['queueCount'] == null ? null : map['queueCount'] as int,
      securityPolicy: map['securityPolicy'] == null
          ? null
          : map['securityPolicy'] as String,
      stackType: map['stackType'] == null ? null : map['stackType'] as String,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
      subnetworkProject: map['subnetworkProject'] == null
          ? null
          : map['subnetworkProject'] as String,
    );
  }
}

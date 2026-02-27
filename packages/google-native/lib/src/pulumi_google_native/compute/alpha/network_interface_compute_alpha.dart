// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_config.dart';
import 'alias_ip_range.dart';
import 'network_interface_nic_type.dart';
import 'network_interface_stack_type.dart';
import 'network_interface_sub_interface.dart';

/// A network interface resource attached to an instance.
class NetworkInterfaceComputeAlpha {
  /// An array of configurations for this interface. Currently, only one access config, ONE_TO_ONE_NAT, is supported. If there are no accessConfigs specified, then this instance will have no external internet access.
  final List<AccessConfig>? accessConfigs;

  /// An array of alias IP ranges for this network interface. You can only specify this field for network interfaces in VPC networks.
  final List<AliasIpRange>? aliasIpRanges;

  /// The prefix length of the primary internal IPv6 range.
  final int? internalIpv6PrefixLength;

  /// An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access.
  final List<AccessConfig>? ipv6AccessConfigs;

  /// An IPv6 internal network address for this network interface. To use a static internal IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance's subnetwork.
  final String? ipv6Address;

  /// URL of the VPC network resource for this instance. When creating an instance, if neither the network nor the subnetwork is specified, the default network global/networks/default is used. If the selected project doesn't have the default network, you must specify a network or subnet. If the network is not specified but the subnetwork is specified, the network is inferred. If you specify this property, you can specify the network as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/global/networks/ network - projects/project/global/networks/network - global/networks/default
  final String? network;

  /// The URL of the network attachment that this interface should connect to in the following format: projects/{project_number}/regions/{region_name}/networkAttachments/{network_attachment_name}.
  final String? networkAttachment;

  /// An IPv4 internal IP address to assign to the instance for this network interface. If not specified by the user, an unused internal IP is assigned by the system.
  final String? networkIP;

  /// The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  final NetworkInterfaceNicType? nicType;

  /// Name of the parent network interface of a VLAN based nic. If this field is specified, vlan must be set.
  final String? parentNicName;

  /// The networking queue count that's specified by users for the network interface. Both Rx and Tx queues will be set to this number. It'll be empty if not specified by the users.
  final int? queueCount;

  /// The stack type for this network interface. To assign only IPv4 addresses, use IPV4_ONLY. To assign both IPv4 and IPv6 addresses, use IPV4_IPV6. If not specified, IPV4_ONLY is used. This field can be both set at instance creation and update network interface operations.
  final NetworkInterfaceStackType? stackType;

  /// SubInterfaces help enable L2 communication for the instance over subnetworks that support L2. Every network interface will get a default untagged (vlan not specified) subinterface. Users can specify additional tagged subinterfaces which are sub-fields to the Network Interface.
  final List<NetworkInterfaceSubInterface>? subinterfaces;

  /// The URL of the Subnetwork resource for this instance. If the network resource is in legacy mode, do not specify this field. If the network is in auto subnet mode, specifying the subnetwork is optional. If the network is in custom subnet mode, specifying the subnetwork is required. If you specify this field, you can specify the subnetwork as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/regions/region /subnetworks/subnetwork - regions/region/subnetworks/subnetwork
  final String? subnetwork;

  /// VLAN tag of a VLAN based network interface, must be in range from 2 to 4094 inclusively. This field is mandatory if the parent network interface name is set.
  final int? vlan;

  NetworkInterfaceComputeAlpha({
    this.accessConfigs,
    this.aliasIpRanges,
    this.internalIpv6PrefixLength,
    this.ipv6AccessConfigs,
    this.ipv6Address,
    this.network,
    this.networkAttachment,
    this.networkIP,
    this.nicType,
    this.parentNicName,
    this.queueCount,
    this.stackType,
    this.subinterfaces,
    this.subnetwork,
    this.vlan,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessConfigsValue = accessConfigs;
    if (accessConfigsValue != null) {
      map['accessConfigs'] =
          pulumi.Input.encodeList<AccessConfig, Map<String, dynamic>>(
              accessConfigsValue, (value) => value.toMap());
    }
    final aliasIpRangesValue = aliasIpRanges;
    if (aliasIpRangesValue != null) {
      map['aliasIpRanges'] =
          pulumi.Input.encodeList<AliasIpRange, Map<String, dynamic>>(
              aliasIpRangesValue, (value) => value.toMap());
    }
    final internalIpv6PrefixLengthValue = internalIpv6PrefixLength;
    if (internalIpv6PrefixLengthValue != null) {
      map['internalIpv6PrefixLength'] = internalIpv6PrefixLengthValue;
    }
    final ipv6AccessConfigsValue = ipv6AccessConfigs;
    if (ipv6AccessConfigsValue != null) {
      map['ipv6AccessConfigs'] =
          pulumi.Input.encodeList<AccessConfig, Map<String, dynamic>>(
              ipv6AccessConfigsValue, (value) => value.toMap());
    }
    final ipv6AddressValue = ipv6Address;
    if (ipv6AddressValue != null) {
      map['ipv6Address'] = ipv6AddressValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final networkAttachmentValue = networkAttachment;
    if (networkAttachmentValue != null) {
      map['networkAttachment'] = networkAttachmentValue;
    }
    final networkIPValue = networkIP;
    if (networkIPValue != null) {
      map['networkIP'] = networkIPValue;
    }
    final nicTypeValue = nicType;
    if (nicTypeValue != null) {
      map['nicType'] = nicTypeValue.value;
    }
    final parentNicNameValue = parentNicName;
    if (parentNicNameValue != null) {
      map['parentNicName'] = parentNicNameValue;
    }
    final queueCountValue = queueCount;
    if (queueCountValue != null) {
      map['queueCount'] = queueCountValue;
    }
    final stackTypeValue = stackType;
    if (stackTypeValue != null) {
      map['stackType'] = stackTypeValue.value;
    }
    final subinterfacesValue = subinterfaces;
    if (subinterfacesValue != null) {
      map['subinterfaces'] = pulumi.Input.encodeList<
          NetworkInterfaceSubInterface,
          Map<String, dynamic>>(subinterfacesValue, (value) => value.toMap());
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    final vlanValue = vlan;
    if (vlanValue != null) {
      map['vlan'] = vlanValue;
    }
    return map;
  }

  factory NetworkInterfaceComputeAlpha.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceComputeAlpha(
      accessConfigs: map['accessConfigs'] == null
          ? null
          : pulumi.Input.decodeList<AccessConfig>(
              map['accessConfigs'],
              (value) =>
                  AccessConfig.fromMap((value as Map).cast<String, dynamic>())),
      aliasIpRanges: map['aliasIpRanges'] == null
          ? null
          : pulumi.Input.decodeList<AliasIpRange>(
              map['aliasIpRanges'],
              (value) =>
                  AliasIpRange.fromMap((value as Map).cast<String, dynamic>())),
      internalIpv6PrefixLength: map['internalIpv6PrefixLength'] == null
          ? null
          : map['internalIpv6PrefixLength'] as int,
      ipv6AccessConfigs: map['ipv6AccessConfigs'] == null
          ? null
          : pulumi.Input.decodeList<AccessConfig>(
              map['ipv6AccessConfigs'],
              (value) =>
                  AccessConfig.fromMap((value as Map).cast<String, dynamic>())),
      ipv6Address:
          map['ipv6Address'] == null ? null : map['ipv6Address'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      networkAttachment: map['networkAttachment'] == null
          ? null
          : map['networkAttachment'] as String,
      networkIP: map['networkIP'] == null ? null : map['networkIP'] as String,
      nicType: map['nicType'] == null
          ? null
          : NetworkInterfaceNicType.fromValue(map['nicType'] as String),
      parentNicName:
          map['parentNicName'] == null ? null : map['parentNicName'] as String,
      queueCount: map['queueCount'] == null ? null : map['queueCount'] as int,
      stackType: map['stackType'] == null
          ? null
          : NetworkInterfaceStackType.fromValue(map['stackType'] as String),
      subinterfaces: map['subinterfaces'] == null
          ? null
          : pulumi.Input.decodeList<NetworkInterfaceSubInterface>(
              map['subinterfaces'],
              (value) => NetworkInterfaceSubInterface.fromMap(
                  (value as Map).cast<String, dynamic>())),
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
      vlan: map['vlan'] == null ? null : map['vlan'] as int,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../restore_workload_compute_instance_restore_properties_network_interface_access_config/restore_workload_compute_instance_restore_properties_network_interface_access_config.dart';
import '../restore_workload_compute_instance_restore_properties_network_interface_alias_ip_range/restore_workload_compute_instance_restore_properties_network_interface_alias_ip_range.dart';
import '../restore_workload_compute_instance_restore_properties_network_interface_ipv6_access_config/restore_workload_compute_instance_restore_properties_network_interface_ipv6_access_config.dart';

class RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface {
  /// Structure is documented below.
  final List<
          RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig>?
      accessConfigs;

  /// Structure is documented below.
  final List<
          RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange>?
      aliasIpRanges;

  /// Optional. The prefix length of the primary internal IPv6 range.
  final int? internalIpv6PrefixLength;

  /// Optional. An IPv4 internal IP address to assign to the instance.
  final String? ipAddress;

  /// Structure is documented below.
  final List<
          RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig>?
      ipv6AccessConfigs;

  /// Possible values are: `UNSPECIFIED_IPV6_ACCESS_TYPE`, `INTERNAL`, `EXTERNAL`.
  final String? ipv6AccessType;

  /// Optional. An IPv6 internal network address for this network interface.
  final String? ipv6Address;

  /// Optional. URL of the VPC network resource for this instance.
  final String? network;

  /// (Optional)
  final String? networkAttachment;

  /// Possible values are: `NIC_TYPE_UNSPECIFIED`, `VIRTIO_NET`, `GVNIC`.
  final String? nicType;

  /// (Optional)
  final int? queueCount;

  /// Possible values are: `STACK_TYPE_UNSPECIFIED`, `IPV4_ONLY`, `IPV4_IPV6`.
  final String? stackType;

  /// Optional. The URL of the Subnetwork resource for this instance.
  final String? subnetwork;

  RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface({
    this.accessConfigs,
    this.aliasIpRanges,
    this.internalIpv6PrefixLength,
    this.ipAddress,
    this.ipv6AccessConfigs,
    this.ipv6AccessType,
    this.ipv6Address,
    this.network,
    this.networkAttachment,
    this.nicType,
    this.queueCount,
    this.stackType,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessConfigsValue = accessConfigs;
    if (accessConfigsValue != null) {
      map['accessConfigs'] = pulumi.Input.encodeList<
          RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig,
          Map<String, dynamic>>(accessConfigsValue, (value) => value.toMap());
    }
    final aliasIpRangesValue = aliasIpRanges;
    if (aliasIpRangesValue != null) {
      map['aliasIpRanges'] = pulumi.Input.encodeList<
          RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange,
          Map<String, dynamic>>(aliasIpRangesValue, (value) => value.toMap());
    }
    final internalIpv6PrefixLengthValue = internalIpv6PrefixLength;
    if (internalIpv6PrefixLengthValue != null) {
      map['internalIpv6PrefixLength'] = internalIpv6PrefixLengthValue;
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final ipv6AccessConfigsValue = ipv6AccessConfigs;
    if (ipv6AccessConfigsValue != null) {
      map['ipv6AccessConfigs'] = pulumi.Input.encodeList<
          RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig,
          Map<String,
              dynamic>>(ipv6AccessConfigsValue, (value) => value.toMap());
    }
    final ipv6AccessTypeValue = ipv6AccessType;
    if (ipv6AccessTypeValue != null) {
      map['ipv6AccessType'] = ipv6AccessTypeValue;
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
    return map;
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface(
      accessConfigs: map['accessConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig>(
              map['accessConfigs'],
              (value) =>
                  RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      aliasIpRanges: map['aliasIpRanges'] == null
          ? null
          : pulumi.Input.decodeList<
                  RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange>(
              map['aliasIpRanges'],
              (value) =>
                  RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange
                      .fromMap((value as Map).cast<String, dynamic>())),
      internalIpv6PrefixLength: map['internalIpv6PrefixLength'] == null
          ? null
          : map['internalIpv6PrefixLength'] as int,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ipv6AccessConfigs: map['ipv6AccessConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig>(
              map['ipv6AccessConfigs'],
              (value) =>
                  RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      ipv6AccessType: map['ipv6AccessType'] == null
          ? null
          : map['ipv6AccessType'] as String,
      ipv6Address:
          map['ipv6Address'] == null ? null : map['ipv6Address'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      networkAttachment: map['networkAttachment'] == null
          ? null
          : map['networkAttachment'] as String,
      nicType: map['nicType'] == null ? null : map['nicType'] as String,
      queueCount: map['queueCount'] == null ? null : map['queueCount'] as int,
      stackType: map['stackType'] == null ? null : map['stackType'] as String,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_workload_compute_instance_restore_properties_network_interface_access_config.dart';
import 'restore_workload_compute_instance_restore_properties_network_interface_alias_ip_range.dart';
import 'restore_workload_compute_instance_restore_properties_network_interface_ipv6_access_config.dart';

class RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface {
  /// Structure is documented below.
  final List<
    RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig
  >?
  accessConfigs;

  /// Structure is documented below.
  final List<
    RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange
  >?
  aliasIpRanges;

  /// Optional. The prefix length of the primary internal IPv6 range.
  final int? internalIpv6PrefixLength;

  /// Optional. An IPv4 internal IP address to assign to the instance.
  final String? ipAddress;

  /// Structure is documented below.
  final List<
    RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig
  >?
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

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface].
  /// [accessConfigs] Structure is documented below.
  /// [aliasIpRanges] Structure is documented below.
  /// [internalIpv6PrefixLength] Optional. The prefix length of the primary internal IPv6 range.
  /// [ipAddress] Optional. An IPv4 internal IP address to assign to the instance.
  /// [ipv6AccessConfigs] Structure is documented below.
  /// [ipv6AccessType] Possible values are: `UNSPECIFIED_IPV6_ACCESS_TYPE`, `INTERNAL`, `EXTERNAL`.
  /// [ipv6Address] Optional. An IPv6 internal network address for this network interface.
  /// [network] Optional. URL of the VPC network resource for this instance.
  /// [networkAttachment] (Optional)
  /// [nicType] Possible values are: `NIC_TYPE_UNSPECIFIED`, `VIRTIO_NET`, `GVNIC`.
  /// [queueCount] (Optional)
  /// [stackType] Possible values are: `STACK_TYPE_UNSPECIFIED`, `IPV4_ONLY`, `IPV4_IPV6`.
  /// [subnetwork] Optional. The URL of the Subnetwork resource for this instance.
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
    return <String, dynamic>{
      'accessConfigs': ?accessConfigs == null
          ? null
          : pulumi.Input.encodeList<
              RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig,
              Map<String, dynamic>
            >(accessConfigs!, (value) => value.toMap()),
      'aliasIpRanges': ?aliasIpRanges == null
          ? null
          : pulumi.Input.encodeList<
              RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange,
              Map<String, dynamic>
            >(aliasIpRanges!, (value) => value.toMap()),
      'internalIpv6PrefixLength': ?internalIpv6PrefixLength,
      'ipAddress': ?ipAddress,
      'ipv6AccessConfigs': ?ipv6AccessConfigs == null
          ? null
          : pulumi.Input.encodeList<
              RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig,
              Map<String, dynamic>
            >(ipv6AccessConfigs!, (value) => value.toMap()),
      'ipv6AccessType': ?ipv6AccessType,
      'ipv6Address': ?ipv6Address,
      'network': ?network,
      'networkAttachment': ?networkAttachment,
      'nicType': ?nicType,
      'queueCount': ?queueCount,
      'stackType': ?stackType,
      'subnetwork': ?subnetwork,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterface(
      accessConfigs: map['accessConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig
            >(
              map['accessConfigs'],
              (value) =>
                  RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      aliasIpRanges: map['aliasIpRanges'] == null
          ? null
          : pulumi.Input.decodeList<
              RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange
            >(
              map['aliasIpRanges'],
              (value) =>
                  RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAliasIpRange.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      internalIpv6PrefixLength: map['internalIpv6PrefixLength'] == null
          ? null
          : map['internalIpv6PrefixLength'] as int,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ipv6AccessConfigs: map['ipv6AccessConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig
            >(
              map['ipv6AccessConfigs'],
              (value) =>
                  RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      ipv6AccessType: map['ipv6AccessType'] == null
          ? null
          : map['ipv6AccessType'] as String,
      ipv6Address: map['ipv6Address'] == null
          ? null
          : map['ipv6Address'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      networkAttachment: map['networkAttachment'] == null
          ? null
          : map['networkAttachment'] as String,
      nicType: map['nicType'] == null ? null : map['nicType'] as String,
      queueCount: map['queueCount'] == null ? null : map['queueCount'] as int,
      stackType: map['stackType'] == null ? null : map['stackType'] as String,
      subnetwork: map['subnetwork'] == null
          ? null
          : map['subnetwork'] as String,
    );
  }
}

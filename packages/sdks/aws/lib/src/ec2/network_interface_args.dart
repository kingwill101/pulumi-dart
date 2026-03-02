// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_attachment.dart';

/// {@template pulumi_ec2_network_interface_network_interface_args_doc}
/// The set of arguments for NetworkInterface.
/// {@endtemplate}
/// {@macro pulumi_ec2_network_interface_network_interface_args_doc}
class NetworkInterfaceArgs {
  /// Configuration block to define the attachment of the ENI. See Attachment below for more details!
  final pulumi.Input<List<NetworkInterfaceAttachment>>? attachments;
  /// Description for the network interface.
  final pulumi.Input<String>? description;
  /// Enables assigning a primary IPv6 Global Unicast Address (GUA) to the network interface (ENI) in dual-stack or IPv6-only subnets. This ensures the instance attached to the ENI retains a consistent IPv6 address. Once enabled, the first IPv6 GUA becomes the primary IPv6 address and cannot be disabled. The primary IPv6 address remains assigned until the instance is terminated or the ENI is detached. Enabling and subsequent disabling forces recreation of the ENI.
  final pulumi.Input<bool>? enablePrimaryIpv6;
  /// Type of network interface to create. Set to `efa` for Elastic Fabric Adapter. Changing `interface_type` will cause the resource to be destroyed and re-created.
  final pulumi.Input<String>? interfaceType;
  /// Number of IPv4 prefixes that AWS automatically assigns to the network interface.
  final pulumi.Input<int>? ipv4PrefixCount;
  /// One or more IPv4 prefixes assigned to the network interface.
  final pulumi.Input<List<String>>? ipv4Prefixes;
  /// Number of IPv6 addresses to assign to a network interface. You can't use this option if specifying specific `ipv6_addresses`. If your subnet has the AssignIpv6AddressOnCreation attribute set to `true`, you can specify `0` to override this setting.
  final pulumi.Input<int>? ipv6AddressCount;
  /// Whether `ipv6_address_list` is allowed and controls the IPs to assign to the ENI and `ipv6_addresses` and `ipv6_address_count` become read-only. Default is `false`.
  final pulumi.Input<bool>? ipv6AddressListEnabled;
  /// List of private IPs to assign to the ENI in sequential order.
  final pulumi.Input<List<String>>? ipv6AddressLists;
  /// One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Addresses are assigned without regard to order. You can't use this option if you're specifying `ipv6_address_count`.
  final pulumi.Input<List<String>>? ipv6Addresses;
  /// Number of IPv6 prefixes that AWS automatically assigns to the network interface.
  final pulumi.Input<int>? ipv6PrefixCount;
  /// One or more IPv6 prefixes assigned to the network interface.
  final pulumi.Input<List<String>>? ipv6Prefixes;
  final pulumi.Input<String>? privateIp;
  /// Whether `private_ip_list` is allowed and controls the IPs to assign to the ENI and `private_ips` and `private_ips_count` become read-only. Default is `false`.
  final pulumi.Input<bool>? privateIpListEnabled;
  /// List of private IPs to assign to the ENI in sequential order. Requires setting `private_ip_list_enabled` to `true`.
  final pulumi.Input<List<String>>? privateIpLists;
  /// List of private IPs to assign to the ENI without regard to order.
  final pulumi.Input<List<String>>? privateIps;
  /// Number of secondary private IPs to assign to the ENI. The total number of private IPs will be 1 + `private_ips_count`, as a primary private IP will be assiged to an ENI by default.
  final pulumi.Input<int>? privateIpsCount;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of security group IDs to assign to the ENI.
  final pulumi.Input<List<String>>? securityGroups;
  /// Whether to enable source destination checking for the ENI. Default true.
  final pulumi.Input<bool>? sourceDestCheck;
  /// Subnet ID to create the ENI in.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> subnetId;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkInterfaceArgs].
  /// [attachments] Configuration block to define the attachment of the ENI. See Attachment below for more details!
  /// [description] Description for the network interface.
  /// [enablePrimaryIpv6] Enables assigning a primary IPv6 Global Unicast Address (GUA) to the network interface (ENI) in dual-stack or IPv6-only subnets. This ensures the instance attached to the ENI retains a consistent IPv6 address. Once enabled, the first IPv6 GUA becomes the primary IPv6 address and cannot be disabled. The primary IPv6 address remains assigned until the instance is terminated or the ENI is detached. Enabling and subsequent disabling forces recreation of the ENI.
  /// [interfaceType] Type of network interface to create. Set to `efa` for Elastic Fabric Adapter. Changing `interface_type` will cause the resource to be destroyed and re-created.
  /// [ipv4PrefixCount] Number of IPv4 prefixes that AWS automatically assigns to the network interface.
  /// [ipv4Prefixes] One or more IPv4 prefixes assigned to the network interface.
  /// [ipv6AddressCount] Number of IPv6 addresses to assign to a network interface. You can't use this option if specifying specific `ipv6_addresses`. If your subnet has the AssignIpv6AddressOnCreation attribute set to `true`, you can specify `0` to override this setting.
  /// [ipv6AddressListEnabled] Whether `ipv6_address_list` is allowed and controls the IPs to assign to the ENI and `ipv6_addresses` and `ipv6_address_count` become read-only. Default is `false`.
  /// [ipv6AddressLists] List of private IPs to assign to the ENI in sequential order.
  /// [ipv6Addresses] One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Addresses are assigned without regard to order. You can't use this option if you're specifying `ipv6_address_count`.
  /// [ipv6PrefixCount] Number of IPv6 prefixes that AWS automatically assigns to the network interface.
  /// [ipv6Prefixes] One or more IPv6 prefixes assigned to the network interface.
  /// [privateIp] Optional.
  /// [privateIpListEnabled] Whether `private_ip_list` is allowed and controls the IPs to assign to the ENI and `private_ips` and `private_ips_count` become read-only. Default is `false`.
  /// [privateIpLists] List of private IPs to assign to the ENI in sequential order. Requires setting `private_ip_list_enabled` to `true`.
  /// [privateIps] List of private IPs to assign to the ENI without regard to order.
  /// [privateIpsCount] Number of secondary private IPs to assign to the ENI. The total number of private IPs will be 1 + `private_ips_count`, as a primary private IP will be assiged to an ENI by default.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroups] List of security group IDs to assign to the ENI.
  /// [sourceDestCheck] Whether to enable source destination checking for the ENI. Default true.
  /// [subnetId] Subnet ID to create the ENI in.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  NetworkInterfaceArgs({
    this.attachments,
    this.description,
    this.enablePrimaryIpv6,
    this.interfaceType,
    this.ipv4PrefixCount,
    this.ipv4Prefixes,
    this.ipv6AddressCount,
    this.ipv6AddressListEnabled,
    this.ipv6AddressLists,
    this.ipv6Addresses,
    this.ipv6PrefixCount,
    this.ipv6Prefixes,
    this.privateIp,
    this.privateIpListEnabled,
    this.privateIpLists,
    this.privateIps,
    this.privateIpsCount,
    this.region,
    this.securityGroups,
    this.sourceDestCheck,
    required this.subnetId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceAttachment>, List<Map<String, dynamic>>>(attachments, (value) => pulumi.Input.encodeList<NetworkInterfaceAttachment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'enablePrimaryIpv6': ?enablePrimaryIpv6,
      'interfaceType': ?interfaceType,
      'ipv4PrefixCount': ?ipv4PrefixCount,
      'ipv4Prefixes': ?ipv4Prefixes,
      'ipv6AddressCount': ?ipv6AddressCount,
      'ipv6AddressListEnabled': ?ipv6AddressListEnabled,
      'ipv6AddressLists': ?ipv6AddressLists,
      'ipv6Addresses': ?ipv6Addresses,
      'ipv6PrefixCount': ?ipv6PrefixCount,
      'ipv6Prefixes': ?ipv6Prefixes,
      'privateIp': ?privateIp,
      'privateIpListEnabled': ?privateIpListEnabled,
      'privateIpLists': ?privateIpLists,
      'privateIps': ?privateIps,
      'privateIpsCount': ?privateIpsCount,
      'region': ?region,
      'securityGroups': ?securityGroups,
      'sourceDestCheck': ?sourceDestCheck,
      'subnetId': subnetId,
      'tags': ?tags,
    };
  }

  factory NetworkInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceArgs(
      attachments: map['attachments'] == null ? null : (pulumi.Input.decodeList<NetworkInterfaceAttachment>(map['attachments'], (value) => NetworkInterfaceAttachment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enablePrimaryIpv6: map['enablePrimaryIpv6'] == null ? null : (map['enablePrimaryIpv6'] as bool).input(),
      interfaceType: map['interfaceType'] == null ? null : (map['interfaceType'] as String).input(),
      ipv4PrefixCount: map['ipv4PrefixCount'] == null ? null : (map['ipv4PrefixCount'] as int).input(),
      ipv4Prefixes: map['ipv4Prefixes'] == null ? null : ((map['ipv4Prefixes'] as List).cast<String>()).input(),
      ipv6AddressCount: map['ipv6AddressCount'] == null ? null : (map['ipv6AddressCount'] as int).input(),
      ipv6AddressListEnabled: map['ipv6AddressListEnabled'] == null ? null : (map['ipv6AddressListEnabled'] as bool).input(),
      ipv6AddressLists: map['ipv6AddressLists'] == null ? null : ((map['ipv6AddressLists'] as List).cast<String>()).input(),
      ipv6Addresses: map['ipv6Addresses'] == null ? null : ((map['ipv6Addresses'] as List).cast<String>()).input(),
      ipv6PrefixCount: map['ipv6PrefixCount'] == null ? null : (map['ipv6PrefixCount'] as int).input(),
      ipv6Prefixes: map['ipv6Prefixes'] == null ? null : ((map['ipv6Prefixes'] as List).cast<String>()).input(),
      privateIp: map['privateIp'] == null ? null : (map['privateIp'] as String).input(),
      privateIpListEnabled: map['privateIpListEnabled'] == null ? null : (map['privateIpListEnabled'] as bool).input(),
      privateIpLists: map['privateIpLists'] == null ? null : ((map['privateIpLists'] as List).cast<String>()).input(),
      privateIps: map['privateIps'] == null ? null : ((map['privateIps'] as List).cast<String>()).input(),
      privateIpsCount: map['privateIpsCount'] == null ? null : (map['privateIpsCount'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      securityGroups: map['securityGroups'] == null ? null : ((map['securityGroups'] as List).cast<String>()).input(),
      sourceDestCheck: map['sourceDestCheck'] == null ? null : (map['sourceDestCheck'] as bool).input(),
      subnetId: (map['subnetId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}


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
      attachments: (() { final guardedValue = map['attachments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceAttachment>(guardedValue, (value) => NetworkInterfaceAttachment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enablePrimaryIpv6: (() { final guardedValue = map['enablePrimaryIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      interfaceType: (() { final guardedValue = map['interfaceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4PrefixCount: (() { final guardedValue = map['ipv4PrefixCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipv4Prefixes: (() { final guardedValue = map['ipv4Prefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6AddressCount: (() { final guardedValue = map['ipv6AddressCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipv6AddressListEnabled: (() { final guardedValue = map['ipv6AddressListEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipv6AddressLists: (() { final guardedValue = map['ipv6AddressLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6Addresses: (() { final guardedValue = map['ipv6Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6PrefixCount: (() { final guardedValue = map['ipv6PrefixCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipv6Prefixes: (() { final guardedValue = map['ipv6Prefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateIp: (() { final guardedValue = map['privateIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpListEnabled: (() { final guardedValue = map['privateIpListEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateIpLists: (() { final guardedValue = map['privateIpLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateIps: (() { final guardedValue = map['privateIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateIpsCount: (() { final guardedValue = map['privateIpsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceDestCheck: (() { final guardedValue = map['sourceDestCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}


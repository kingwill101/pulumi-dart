// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_ecs_network_interface_ecs_network_interface_args_doc}
/// The set of arguments for EcsNetworkInterface.
/// {@endtemplate}
/// {@macro pulumi_ecs_ecs_network_interface_ecs_network_interface_args_doc}
class EcsNetworkInterfaceArgs {
  /// The description of the ENI. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  final pulumi.Input<String>? description;
  /// The type of the ENI. Default value: `Secondary`. Valid values: `Secondary`, `Trunk`.
  final pulumi.Input<String>? instanceType;
  /// The number of IPv4 prefixes that can be automatically created by ECS. Valid values: 1 to 10. **NOTE:** You cannot specify both the `ipv4_prefixes` and `ipv4_prefix_count` parameters.
  final pulumi.Input<int>? ipv4PrefixCount;
  /// A list of IPv4 prefixes to be assigned to the ENI. Support up to 10.
  final pulumi.Input<List<String>>? ipv4Prefixes;
  /// The number of IPv6 addresses to randomly generate for the primary ENI. Valid values: 1 to 10. **NOTE:** You cannot specify both the `ipv6_addresses` and `ipv6_address_count` parameters.
  final pulumi.Input<int>? ipv6AddressCount;
  /// A list of IPv6 address to be assigned to the primary ENI. Support up to 10.
  final pulumi.Input<List<String>>? ipv6Addresses;
  /// Field `name` has been deprecated from provider version 1.123.1. New field `network_interface_name` instead
  final pulumi.Input<String>? name;
  /// The name of the ENI. The name must be 2 to 128 characters in length, and can contain letters, digits, colons (:), underscores (_), and hyphens (-). It must start with a letter and cannot start with http:// or https://.
  final pulumi.Input<String>? networkInterfaceName;
  /// The communication mode of the ENI. Default value: `Standard`. Valid values: `Standard`, `HighPerformance`.
  final pulumi.Input<String>? networkInterfaceTrafficMode;
  /// The primary private IP address of the ENI. The specified IP address must be available within the CIDR block of the VSwitch. If this parameter is not specified, an available IP address is assigned from the VSwitch CIDR block at random.
  final pulumi.Input<String>? primaryIpAddress;
  /// Field `private_ip` has been deprecated from provider version 1.123.1. New field `primary_ip_address` instead
  final pulumi.Input<String>? privateIp;
  /// Specifies secondary private IP address N of the ENI. This IP address must be an available IP address within the CIDR block of the VSwitch to which the ENI belongs.
  final pulumi.Input<List<String>>? privateIpAddresses;
  /// Field `private_ips` has been deprecated from provider version 1.123.1. New field `private_ip_addresses` instead
  final pulumi.Input<List<String>>? privateIps;
  /// Field `private_ips_count` has been deprecated from provider version 1.123.1. New field `secondary_private_ip_address_count` instead
  final pulumi.Input<int>? privateIpsCount;
  /// The queue number of the ENI.
  final pulumi.Input<int>? queueNumber;
  /// The resource group id.
  final pulumi.Input<String>? resourceGroupId;
  /// The number of private IP addresses that can be automatically created by ECS.
  final pulumi.Input<int>? secondaryPrivateIpAddressCount;
  /// The ID of security group N. The security groups and the ENI must belong to the same VPC. The valid values of N are based on the maximum number of security groups to which an ENI can be added. **NOTE:** Either `security_group_ids` or `security_groups` must be set with valid security group IDs.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Field `security_groups` has been deprecated from provider version 1.123.1. New field `security_group_ids` instead. **NOTE:** Either `security_group_ids` or `security_groups` must be set with valid security group IDs.
  final pulumi.Input<List<String>>? securityGroups;
  /// Indicates whether the source and destination IP address check feature is enabled. To improve network security, enable this feature. Default value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? sourceDestCheck;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VSwitch in the specified VPC. The private IP addresses assigned to the ENI must be available IP addresses within the CIDR block of the VSwitch.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [EcsNetworkInterfaceArgs].
  /// [description] The description of the ENI. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  /// [instanceType] The type of the ENI. Default value: `Secondary`. Valid values: `Secondary`, `Trunk`.
  /// [ipv4PrefixCount] The number of IPv4 prefixes that can be automatically created by ECS. Valid values: 1 to 10. **NOTE:** You cannot specify both the `ipv4_prefixes` and `ipv4_prefix_count` parameters.
  /// [ipv4Prefixes] A list of IPv4 prefixes to be assigned to the ENI. Support up to 10.
  /// [ipv6AddressCount] The number of IPv6 addresses to randomly generate for the primary ENI. Valid values: 1 to 10. **NOTE:** You cannot specify both the `ipv6_addresses` and `ipv6_address_count` parameters.
  /// [ipv6Addresses] A list of IPv6 address to be assigned to the primary ENI. Support up to 10.
  /// [name] Field `name` has been deprecated from provider version 1.123.1. New field `network_interface_name` instead
  /// [networkInterfaceName] The name of the ENI. The name must be 2 to 128 characters in length, and can contain letters, digits, colons (:), underscores (_), and hyphens (-). It must start with a letter and cannot start with http:// or https://.
  /// [networkInterfaceTrafficMode] The communication mode of the ENI. Default value: `Standard`. Valid values: `Standard`, `HighPerformance`.
  /// [primaryIpAddress] The primary private IP address of the ENI. The specified IP address must be available within the CIDR block of the VSwitch. If this parameter is not specified, an available IP address is assigned from the VSwitch CIDR block at random.
  /// [privateIp] Field `private_ip` has been deprecated from provider version 1.123.1. New field `primary_ip_address` instead
  /// [privateIpAddresses] Specifies secondary private IP address N of the ENI. This IP address must be an available IP address within the CIDR block of the VSwitch to which the ENI belongs.
  /// [privateIps] Field `private_ips` has been deprecated from provider version 1.123.1. New field `private_ip_addresses` instead
  /// [privateIpsCount] Field `private_ips_count` has been deprecated from provider version 1.123.1. New field `secondary_private_ip_address_count` instead
  /// [queueNumber] The queue number of the ENI.
  /// [resourceGroupId] The resource group id.
  /// [secondaryPrivateIpAddressCount] The number of private IP addresses that can be automatically created by ECS.
  /// [securityGroupIds] The ID of security group N. The security groups and the ENI must belong to the same VPC. The valid values of N are based on the maximum number of security groups to which an ENI can be added. **NOTE:** Either `security_group_ids` or `security_groups` must be set with valid security group IDs.
  /// [securityGroups] Field `security_groups` has been deprecated from provider version 1.123.1. New field `security_group_ids` instead. **NOTE:** Either `security_group_ids` or `security_groups` must be set with valid security group IDs.
  /// [sourceDestCheck] Indicates whether the source and destination IP address check feature is enabled. To improve network security, enable this feature. Default value: `false`. Valid values: `true`, `false`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vswitchId] The ID of the VSwitch in the specified VPC. The private IP addresses assigned to the ENI must be available IP addresses within the CIDR block of the VSwitch.
  EcsNetworkInterfaceArgs({
    this.description,
    this.instanceType,
    this.ipv4PrefixCount,
    this.ipv4Prefixes,
    this.ipv6AddressCount,
    this.ipv6Addresses,
    this.name,
    this.networkInterfaceName,
    this.networkInterfaceTrafficMode,
    this.primaryIpAddress,
    this.privateIp,
    this.privateIpAddresses,
    this.privateIps,
    this.privateIpsCount,
    this.queueNumber,
    this.resourceGroupId,
    this.secondaryPrivateIpAddressCount,
    this.securityGroupIds,
    this.securityGroups,
    this.sourceDestCheck,
    this.tags,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'instanceType': ?instanceType,
      'ipv4PrefixCount': ?ipv4PrefixCount,
      'ipv4Prefixes': ?ipv4Prefixes,
      'ipv6AddressCount': ?ipv6AddressCount,
      'ipv6Addresses': ?ipv6Addresses,
      'name': ?name,
      'networkInterfaceName': ?networkInterfaceName,
      'networkInterfaceTrafficMode': ?networkInterfaceTrafficMode,
      'primaryIpAddress': ?primaryIpAddress,
      'privateIp': ?privateIp,
      'privateIpAddresses': ?privateIpAddresses,
      'privateIps': ?privateIps,
      'privateIpsCount': ?privateIpsCount,
      'queueNumber': ?queueNumber,
      'resourceGroupId': ?resourceGroupId,
      'secondaryPrivateIpAddressCount': ?secondaryPrivateIpAddressCount,
      'securityGroupIds': ?securityGroupIds,
      'securityGroups': ?securityGroups,
      'sourceDestCheck': ?sourceDestCheck,
      'tags': ?tags,
      'vswitchId': vswitchId,
    };
  }

  factory EcsNetworkInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return EcsNetworkInterfaceArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      ipv4PrefixCount: map['ipv4PrefixCount'] == null ? null : (map['ipv4PrefixCount'] as int).input(),
      ipv4Prefixes: map['ipv4Prefixes'] == null ? null : ((map['ipv4Prefixes'] as List).cast<String>()).input(),
      ipv6AddressCount: map['ipv6AddressCount'] == null ? null : (map['ipv6AddressCount'] as int).input(),
      ipv6Addresses: map['ipv6Addresses'] == null ? null : ((map['ipv6Addresses'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkInterfaceName: map['networkInterfaceName'] == null ? null : (map['networkInterfaceName'] as String).input(),
      networkInterfaceTrafficMode: map['networkInterfaceTrafficMode'] == null ? null : (map['networkInterfaceTrafficMode'] as String).input(),
      primaryIpAddress: map['primaryIpAddress'] == null ? null : (map['primaryIpAddress'] as String).input(),
      privateIp: map['privateIp'] == null ? null : (map['privateIp'] as String).input(),
      privateIpAddresses: map['privateIpAddresses'] == null ? null : ((map['privateIpAddresses'] as List).cast<String>()).input(),
      privateIps: map['privateIps'] == null ? null : ((map['privateIps'] as List).cast<String>()).input(),
      privateIpsCount: map['privateIpsCount'] == null ? null : (map['privateIpsCount'] as int).input(),
      queueNumber: map['queueNumber'] == null ? null : (map['queueNumber'] as int).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      secondaryPrivateIpAddressCount: map['secondaryPrivateIpAddressCount'] == null ? null : (map['secondaryPrivateIpAddressCount'] as int).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds'] as List).cast<String>()).input(),
      securityGroups: map['securityGroups'] == null ? null : ((map['securityGroups'] as List).cast<String>()).input(),
      sourceDestCheck: map['sourceDestCheck'] == null ? null : (map['sourceDestCheck'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}


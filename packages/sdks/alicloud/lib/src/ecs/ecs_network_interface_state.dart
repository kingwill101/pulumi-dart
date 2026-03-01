// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EcsNetworkInterface resources.
class EcsNetworkInterfaceState {
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
  /// The MAC address of the ENI.
  final pulumi.Input<String>? mac;
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
  /// The status of the ENI.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VSwitch in the specified VPC. The private IP addresses assigned to the ENI must be available IP addresses within the CIDR block of the VSwitch.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [EcsNetworkInterfaceState].
  /// [description] The description of the ENI. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  /// [instanceType] The type of the ENI. Default value: `Secondary`. Valid values: `Secondary`, `Trunk`.
  /// [ipv4PrefixCount] The number of IPv4 prefixes that can be automatically created by ECS. Valid values: 1 to 10. **NOTE:** You cannot specify both the `ipv4_prefixes` and `ipv4_prefix_count` parameters.
  /// [ipv4Prefixes] A list of IPv4 prefixes to be assigned to the ENI. Support up to 10.
  /// [ipv6AddressCount] The number of IPv6 addresses to randomly generate for the primary ENI. Valid values: 1 to 10. **NOTE:** You cannot specify both the `ipv6_addresses` and `ipv6_address_count` parameters.
  /// [ipv6Addresses] A list of IPv6 address to be assigned to the primary ENI. Support up to 10.
  /// [mac] The MAC address of the ENI.
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
  /// [status] The status of the ENI.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vswitchId] The ID of the VSwitch in the specified VPC. The private IP addresses assigned to the ENI must be available IP addresses within the CIDR block of the VSwitch.
  EcsNetworkInterfaceState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceType,
    pulumi.Output<int>? ipv4PrefixCount,
    pulumi.Output<List<String>>? ipv4Prefixes,
    pulumi.Output<int>? ipv6AddressCount,
    pulumi.Output<List<String>>? ipv6Addresses,
    pulumi.Output<String>? mac,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkInterfaceName,
    pulumi.Output<String>? networkInterfaceTrafficMode,
    pulumi.Output<String>? primaryIpAddress,
    pulumi.Output<String>? privateIp,
    pulumi.Output<List<String>>? privateIpAddresses,
    pulumi.Output<List<String>>? privateIps,
    pulumi.Output<int>? privateIpsCount,
    pulumi.Output<int>? queueNumber,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<int>? secondaryPrivateIpAddressCount,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<List<String>>? securityGroups,
    pulumi.Output<bool>? sourceDestCheck,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vswitchId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      ipv4PrefixCount = pulumi.Input.asOptionalInput<int>(ipv4PrefixCount),
      ipv4Prefixes = pulumi.Input.asOptionalInput<List<String>>(ipv4Prefixes),
      ipv6AddressCount = pulumi.Input.asOptionalInput<int>(ipv6AddressCount),
      ipv6Addresses = pulumi.Input.asOptionalInput<List<String>>(ipv6Addresses),
      mac = pulumi.Input.asOptionalInput<String>(mac),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkInterfaceName = pulumi.Input.asOptionalInput<String>(networkInterfaceName),
      networkInterfaceTrafficMode = pulumi.Input.asOptionalInput<String>(networkInterfaceTrafficMode),
      primaryIpAddress = pulumi.Input.asOptionalInput<String>(primaryIpAddress),
      privateIp = pulumi.Input.asOptionalInput<String>(privateIp),
      privateIpAddresses = pulumi.Input.asOptionalInput<List<String>>(privateIpAddresses),
      privateIps = pulumi.Input.asOptionalInput<List<String>>(privateIps),
      privateIpsCount = pulumi.Input.asOptionalInput<int>(privateIpsCount),
      queueNumber = pulumi.Input.asOptionalInput<int>(queueNumber),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      secondaryPrivateIpAddressCount = pulumi.Input.asOptionalInput<int>(secondaryPrivateIpAddressCount),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      securityGroups = pulumi.Input.asOptionalInput<List<String>>(securityGroups),
      sourceDestCheck = pulumi.Input.asOptionalInput<bool>(sourceDestCheck),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'instanceType': ?instanceType,
      'ipv4PrefixCount': ?ipv4PrefixCount,
      'ipv4Prefixes': ?ipv4Prefixes,
      'ipv6AddressCount': ?ipv6AddressCount,
      'ipv6Addresses': ?ipv6Addresses,
      'mac': ?mac,
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
      'status': ?status,
      'tags': ?tags,
      'vswitchId': ?vswitchId,
    };
  }

  factory EcsNetworkInterfaceState.fromMap(Map<String, dynamic> map) {
    return EcsNetworkInterfaceState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      ipv4PrefixCount: map['ipv4PrefixCount'] == null ? null : pulumi.Output.create<int>(map['ipv4PrefixCount'] as int),
      ipv4Prefixes: map['ipv4Prefixes'] == null ? null : pulumi.Output.create<List<String>>((map['ipv4Prefixes'] as List).cast<String>()),
      ipv6AddressCount: map['ipv6AddressCount'] == null ? null : pulumi.Output.create<int>(map['ipv6AddressCount'] as int),
      ipv6Addresses: map['ipv6Addresses'] == null ? null : pulumi.Output.create<List<String>>((map['ipv6Addresses'] as List).cast<String>()),
      mac: map['mac'] == null ? null : pulumi.Output.create<String>(map['mac'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkInterfaceName: map['networkInterfaceName'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceName'] as String),
      networkInterfaceTrafficMode: map['networkInterfaceTrafficMode'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceTrafficMode'] as String),
      primaryIpAddress: map['primaryIpAddress'] == null ? null : pulumi.Output.create<String>(map['primaryIpAddress'] as String),
      privateIp: map['privateIp'] == null ? null : pulumi.Output.create<String>(map['privateIp'] as String),
      privateIpAddresses: map['privateIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['privateIpAddresses'] as List).cast<String>()),
      privateIps: map['privateIps'] == null ? null : pulumi.Output.create<List<String>>((map['privateIps'] as List).cast<String>()),
      privateIpsCount: map['privateIpsCount'] == null ? null : pulumi.Output.create<int>(map['privateIpsCount'] as int),
      queueNumber: map['queueNumber'] == null ? null : pulumi.Output.create<int>(map['queueNumber'] as int),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      secondaryPrivateIpAddressCount: map['secondaryPrivateIpAddressCount'] == null ? null : pulumi.Output.create<int>(map['secondaryPrivateIpAddressCount'] as int),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      securityGroups: map['securityGroups'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroups'] as List).cast<String>()),
      sourceDestCheck: map['sourceDestCheck'] == null ? null : pulumi.Output.create<bool>(map['sourceDestCheck'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_network_interface_network_interface_args_doc}
/// The set of arguments for NetworkInterface.
/// {@endtemplate}
/// {@macro pulumi_vpc_network_interface_network_interface_args_doc}
class NetworkInterfaceArgs {
  /// Description of the ENI. This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Default value is null.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? instanceType;
  final pulumi.Input<int>? ipv4PrefixCount;
  final pulumi.Input<List<String>>? ipv4Prefixes;
  final pulumi.Input<int>? ipv6AddressCount;
  final pulumi.Input<List<String>>? ipv6Addresses;
  /// Name of the ENI. This name can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-", ".", "_", and must not begin or end with a hyphen, and must not begin with http:// or https://. Default value is null.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? networkInterfaceName;
  final pulumi.Input<String>? networkInterfaceTrafficMode;
  final pulumi.Input<String>? primaryIpAddress;
  /// The primary private IP of the ENI.
  final pulumi.Input<String>? privateIp;
  final pulumi.Input<List<String>>? privateIpAddresses;
  /// List of secondary private IPs to assign to the ENI. Don't use both private_ips and private_ips_count in the same ENI resource block.
  final pulumi.Input<List<String>>? privateIps;
  /// Number of secondary private IPs to assign to the ENI. Don't use both private_ips and private_ips_count in the same ENI resource block.
  final pulumi.Input<int>? privateIpsCount;
  final pulumi.Input<int>? queueNumber;
  /// The Id of resource group which the network interface belongs.
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<int>? secondaryPrivateIpAddressCount;
  final pulumi.Input<List<String>>? securityGroupIds;
  /// A list of security group ids to associate with.
  final pulumi.Input<List<String>>? securityGroups;
  final pulumi.Input<bool>? sourceDestCheck;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VSwitch to create the ENI in.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [NetworkInterfaceArgs].
  /// [description] Description of the ENI. This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Default value is null.
  /// [instanceType] Optional.
  /// [ipv4PrefixCount] Optional.
  /// [ipv4Prefixes] Optional.
  /// [ipv6AddressCount] Optional.
  /// [ipv6Addresses] Optional.
  /// [name] Name of the ENI. This name can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-", ".", "_", and must not begin or end with a hyphen, and must not begin with http:// or https://. Default value is null.
  /// [networkInterfaceName] Optional.
  /// [networkInterfaceTrafficMode] Optional.
  /// [primaryIpAddress] Optional.
  /// [privateIp] The primary private IP of the ENI.
  /// [privateIpAddresses] Optional.
  /// [privateIps] List of secondary private IPs to assign to the ENI. Don't use both private_ips and private_ips_count in the same ENI resource block.
  /// [privateIpsCount] Number of secondary private IPs to assign to the ENI. Don't use both private_ips and private_ips_count in the same ENI resource block.
  /// [queueNumber] Optional.
  /// [resourceGroupId] The Id of resource group which the network interface belongs.
  /// [secondaryPrivateIpAddressCount] Optional.
  /// [securityGroupIds] Optional.
  /// [securityGroups] A list of security group ids to associate with.
  /// [sourceDestCheck] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vswitchId] The VSwitch to create the ENI in.
  NetworkInterfaceArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceType,
    pulumi.Output<int>? ipv4PrefixCount,
    pulumi.Output<List<String>>? ipv4Prefixes,
    pulumi.Output<int>? ipv6AddressCount,
    pulumi.Output<List<String>>? ipv6Addresses,
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
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vswitchId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      ipv4PrefixCount = pulumi.Input.asOptionalInput<int>(ipv4PrefixCount),
      ipv4Prefixes = pulumi.Input.asOptionalInput<List<String>>(ipv4Prefixes),
      ipv6AddressCount = pulumi.Input.asOptionalInput<int>(ipv6AddressCount),
      ipv6Addresses = pulumi.Input.asOptionalInput<List<String>>(ipv6Addresses),
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
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vswitchId = pulumi.Input.asInput<String>(vswitchId);

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

  factory NetworkInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      ipv4PrefixCount: map['ipv4PrefixCount'] == null ? null : pulumi.Output.create<int>(map['ipv4PrefixCount'] as int),
      ipv4Prefixes: map['ipv4Prefixes'] == null ? null : pulumi.Output.create<List<String>>((map['ipv4Prefixes'] as List).cast<String>()),
      ipv6AddressCount: map['ipv6AddressCount'] == null ? null : pulumi.Output.create<int>(map['ipv6AddressCount'] as int),
      ipv6Addresses: map['ipv6Addresses'] == null ? null : pulumi.Output.create<List<String>>((map['ipv6Addresses'] as List).cast<String>()),
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
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vswitchId: pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}


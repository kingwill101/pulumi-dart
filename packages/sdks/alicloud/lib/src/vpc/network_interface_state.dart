// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkInterface resources.
class NetworkInterfaceState {
  /// Description of the ENI. This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Default value is null.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? instanceType;
  final pulumi.Input<int>? ipv4PrefixCount;
  final pulumi.Input<List<String>>? ipv4Prefixes;
  final pulumi.Input<int>? ipv6AddressCount;
  final pulumi.Input<List<String>>? ipv6Addresses;
  /// (Available in 1.54.0+) The MAC address of an ENI.
  final pulumi.Input<String>? mac;
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
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VSwitch to create the ENI in.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [NetworkInterfaceState].
  /// [description] Description of the ENI. This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Default value is null.
  /// [instanceType] Optional.
  /// [ipv4PrefixCount] Optional.
  /// [ipv4Prefixes] Optional.
  /// [ipv6AddressCount] Optional.
  /// [ipv6Addresses] Optional.
  /// [mac] (Available in 1.54.0+) The MAC address of an ENI.
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
  /// [status] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vswitchId] The VSwitch to create the ENI in.
  NetworkInterfaceState({
    this.description,
    this.instanceType,
    this.ipv4PrefixCount,
    this.ipv4Prefixes,
    this.ipv6AddressCount,
    this.ipv6Addresses,
    this.mac,
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
    this.status,
    this.tags,
    this.vswitchId,
  });

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

  factory NetworkInterfaceState.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      ipv4PrefixCount: map['ipv4PrefixCount'] == null ? null : (map['ipv4PrefixCount'] as int).input(),
      ipv4Prefixes: map['ipv4Prefixes'] == null ? null : ((map['ipv4Prefixes'] as List).cast<String>()).input(),
      ipv6AddressCount: map['ipv6AddressCount'] == null ? null : (map['ipv6AddressCount'] as int).input(),
      ipv6Addresses: map['ipv6Addresses'] == null ? null : ((map['ipv6Addresses'] as List).cast<String>()).input(),
      mac: map['mac'] == null ? null : (map['mac'] as String).input(),
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
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}


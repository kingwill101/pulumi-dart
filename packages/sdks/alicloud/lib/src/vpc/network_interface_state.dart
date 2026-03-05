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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4PrefixCount: (() { final guardedValue = map['ipv4PrefixCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipv4Prefixes: (() { final guardedValue = map['ipv4Prefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6AddressCount: (() { final guardedValue = map['ipv6AddressCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipv6Addresses: (() { final guardedValue = map['ipv6Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mac: (() { final guardedValue = map['mac']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceName: (() { final guardedValue = map['networkInterfaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceTrafficMode: (() { final guardedValue = map['networkInterfaceTrafficMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryIpAddress: (() { final guardedValue = map['primaryIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIp: (() { final guardedValue = map['privateIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddresses: (() { final guardedValue = map['privateIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateIps: (() { final guardedValue = map['privateIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateIpsCount: (() { final guardedValue = map['privateIpsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      queueNumber: (() { final guardedValue = map['queueNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryPrivateIpAddressCount: (() { final guardedValue = map['secondaryPrivateIpAddressCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceDestCheck: (() { final guardedValue = map['sourceDestCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


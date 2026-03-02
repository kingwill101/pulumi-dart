// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceSecondaryNetworkInterface {
  /// Whether the network interface should be destroyed when the instance is terminated. Defaults to `true`. Forces replacement.
  final pulumi.Input<bool>? deleteOnTermination;
  /// Device index for the network interface attachment. Defaults to `0`. Forces replacement.
  final pulumi.Input<int>? deviceIndex;
  /// Type of network interface. Currently only `secondary` is supported. Defaults to `secondary`. Forces replacement.
  final pulumi.Input<String>? interfaceType;
  final pulumi.Input<String>? macAddress;
  /// Network card index for the interface. Each network card can have one secondary interface. Forces replacement.
  final pulumi.Input<int> networkCardIndex;
  /// Number of private IP addresses to assign to the network interface. Defaults to `1`. Forces replacement.
  final pulumi.Input<int>? privateIpAddressCount;
  /// List of private IP addresses to assign to the network interface. If not specified, AWS will automatically assign IP addresses based on `private_ip_address_count`. Forces replacement.
  final pulumi.Input<List<String>>? privateIpAddresses;
  final pulumi.Input<String>? secondaryInterfaceId;
  final pulumi.Input<String>? secondaryNetworkId;
  /// ID of the secondary subnet in which to create the network interface. Forces replacement.
  final pulumi.Input<String> secondarySubnetId;
  /// Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. Defaults true.
  final pulumi.Input<bool>? sourceDestCheck;
  final pulumi.Input<String>? status;

  /// Creates a new [InstanceSecondaryNetworkInterface].
  /// [deleteOnTermination] Whether the network interface should be destroyed when the instance is terminated. Defaults to `true`. Forces replacement.
  /// [deviceIndex] Device index for the network interface attachment. Defaults to `0`. Forces replacement.
  /// [interfaceType] Type of network interface. Currently only `secondary` is supported. Defaults to `secondary`. Forces replacement.
  /// [macAddress] Optional.
  /// [networkCardIndex] Network card index for the interface. Each network card can have one secondary interface. Forces replacement.
  /// [privateIpAddressCount] Number of private IP addresses to assign to the network interface. Defaults to `1`. Forces replacement.
  /// [privateIpAddresses] List of private IP addresses to assign to the network interface. If not specified, AWS will automatically assign IP addresses based on `private_ip_address_count`. Forces replacement.
  /// [secondaryInterfaceId] Optional.
  /// [secondaryNetworkId] Optional.
  /// [secondarySubnetId] ID of the secondary subnet in which to create the network interface. Forces replacement.
  /// [sourceDestCheck] Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. Defaults true.
  /// [status] Optional.
  InstanceSecondaryNetworkInterface({
    this.deleteOnTermination,
    this.deviceIndex,
    this.interfaceType,
    this.macAddress,
    required this.networkCardIndex,
    this.privateIpAddressCount,
    this.privateIpAddresses,
    this.secondaryInterfaceId,
    this.secondaryNetworkId,
    required this.secondarySubnetId,
    this.sourceDestCheck,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOnTermination': ?deleteOnTermination,
      'deviceIndex': ?deviceIndex,
      'interfaceType': ?interfaceType,
      'macAddress': ?macAddress,
      'networkCardIndex': networkCardIndex,
      'privateIpAddressCount': ?privateIpAddressCount,
      'privateIpAddresses': ?privateIpAddresses,
      'secondaryInterfaceId': ?secondaryInterfaceId,
      'secondaryNetworkId': ?secondaryNetworkId,
      'secondarySubnetId': secondarySubnetId,
      'sourceDestCheck': ?sourceDestCheck,
      'status': ?status,
    };
  }

  factory InstanceSecondaryNetworkInterface.fromMap(Map<String, dynamic> map) {
    return InstanceSecondaryNetworkInterface(
      deleteOnTermination: map['deleteOnTermination'] == null ? null : ((map['deleteOnTermination'] as bool).input()).input(),
      deviceIndex: map['deviceIndex'] == null ? null : ((map['deviceIndex'] as int).input()).input(),
      interfaceType: map['interfaceType'] == null ? null : ((map['interfaceType'] as String).input()).input(),
      macAddress: map['macAddress'] == null ? null : ((map['macAddress'] as String).input()).input(),
      networkCardIndex: (map['networkCardIndex'] as int).input(),
      privateIpAddressCount: map['privateIpAddressCount'] == null ? null : ((map['privateIpAddressCount'] as int).input()).input(),
      privateIpAddresses: map['privateIpAddresses'] == null ? null : (((map['privateIpAddresses'] as List).cast<String>()).input()).input(),
      secondaryInterfaceId: map['secondaryInterfaceId'] == null ? null : ((map['secondaryInterfaceId'] as String).input()).input(),
      secondaryNetworkId: map['secondaryNetworkId'] == null ? null : ((map['secondaryNetworkId'] as String).input()).input(),
      secondarySubnetId: (map['secondarySubnetId'] as String).input(),
      sourceDestCheck: map['sourceDestCheck'] == null ? null : ((map['sourceDestCheck'] as bool).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
    );
  }
}


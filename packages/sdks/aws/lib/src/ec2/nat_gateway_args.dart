// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_availability_zone_address.dart';

/// {@template pulumi_ec2_nat_gateway_nat_gateway_args_doc}
/// The set of arguments for NatGateway.
/// {@endtemplate}
/// {@macro pulumi_ec2_nat_gateway_nat_gateway_args_doc}
class NatGatewayArgs {
  /// The Allocation ID of the Elastic IP address for the NAT Gateway. Required when `connectivityType` is set to `public` and `availabilityMode` is set to `zonal`. When `availabilityMode` is set to `regional`, this must not be set; instead, use the `availabilityZoneAddress` block to specify EIPs for each AZ.
  final pulumi.Input<String>? allocationId;
  /// Specifies whether to create a zonal (single-AZ) or regional (multi-AZ) NAT gateway. Valid values are `zonal` and `regional`. Defaults to `zonal`.
  final pulumi.Input<String>? availabilityMode;
  /// Repeatable configuration block for the Elastic IP addresses (EIPs) and availability zones for the regional NAT gateway. When not specified, the regional NAT gateway will automatically expand to new AZs and associate EIPs upon detection of an elastic network interface (auto mode). When specified, auto-expansion is disabled (manual mode). See `availabilityZoneAddress` below for details.
  final pulumi.Input<List<NatGatewayAvailabilityZoneAddress>>? availabilityZoneAddresses;
  /// Connectivity type for the NAT Gateway. Valid values are `private` and `public`. When `availabilityMode` is set to `regional`, this must be set to `public`. Defaults to `public`.
  final pulumi.Input<String>? connectivityType;
  /// The private IPv4 address to assign to the NAT Gateway. If you don't provide an address, a private IPv4 address will be automatically assigned.
  final pulumi.Input<String>? privateIp;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of secondary allocation EIP IDs for this NAT Gateway. To remove all secondary allocations an empty list should be specified.
  final pulumi.Input<List<String>>? secondaryAllocationIds;
  /// The number of secondary private IPv4 addresses you want to assign to the NAT Gateway.
  final pulumi.Input<int>? secondaryPrivateIpAddressCount;
  /// A list of secondary private IPv4 addresses to assign to the NAT Gateway. To remove all secondary private addresses an empty list should be specified.
  final pulumi.Input<List<String>>? secondaryPrivateIpAddresses;
  /// The Subnet ID of the subnet in which to place the NAT Gateway. Required when `availabilityMode` is set to `zonal`. Must not be set when `availabilityMode` is set to `regional`.
  final pulumi.Input<String>? subnetId;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// VPC ID where this NAT Gateway will be created. Required when `availabilityMode` is set to `regional`.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [NatGatewayArgs].
  /// [allocationId] The Allocation ID of the Elastic IP address for the NAT Gateway. Required when `connectivityType` is set to `public` and `availabilityMode` is set to `zonal`. When `availabilityMode` is set to `regional`, this must not be set; instead, use the `availabilityZoneAddress` block to specify EIPs for each AZ.
  /// [availabilityMode] Specifies whether to create a zonal (single-AZ) or regional (multi-AZ) NAT gateway. Valid values are `zonal` and `regional`. Defaults to `zonal`.
  /// [availabilityZoneAddresses] Repeatable configuration block for the Elastic IP addresses (EIPs) and availability zones for the regional NAT gateway. When not specified, the regional NAT gateway will automatically expand to new AZs and associate EIPs upon detection of an elastic network interface (auto mode). When specified, auto-expansion is disabled (manual mode). See `availabilityZoneAddress` below for details.
  /// [connectivityType] Connectivity type for the NAT Gateway. Valid values are `private` and `public`. When `availabilityMode` is set to `regional`, this must be set to `public`. Defaults to `public`.
  /// [privateIp] The private IPv4 address to assign to the NAT Gateway. If you don't provide an address, a private IPv4 address will be automatically assigned.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secondaryAllocationIds] A list of secondary allocation EIP IDs for this NAT Gateway. To remove all secondary allocations an empty list should be specified.
  /// [secondaryPrivateIpAddressCount] The number of secondary private IPv4 addresses you want to assign to the NAT Gateway.
  /// [secondaryPrivateIpAddresses] A list of secondary private IPv4 addresses to assign to the NAT Gateway. To remove all secondary private addresses an empty list should be specified.
  /// [subnetId] The Subnet ID of the subnet in which to place the NAT Gateway. Required when `availabilityMode` is set to `zonal`. Must not be set when `availabilityMode` is set to `regional`.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] VPC ID where this NAT Gateway will be created. Required when `availabilityMode` is set to `regional`.
  const NatGatewayArgs({
    this.allocationId,
    this.availabilityMode,
    this.availabilityZoneAddresses,
    this.connectivityType,
    this.privateIp,
    this.region,
    this.secondaryAllocationIds,
    this.secondaryPrivateIpAddressCount,
    this.secondaryPrivateIpAddresses,
    this.subnetId,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': ?allocationId,
      'availabilityMode': ?availabilityMode,
      'availabilityZoneAddresses': ?pulumi.Input.mapOptionalInputValue<List<NatGatewayAvailabilityZoneAddress>, List<Map<String, dynamic>>>(availabilityZoneAddresses, (value) => pulumi.Input.encodeList<NatGatewayAvailabilityZoneAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectivityType': ?connectivityType,
      'privateIp': ?privateIp,
      'region': ?region,
      'secondaryAllocationIds': ?secondaryAllocationIds,
      'secondaryPrivateIpAddressCount': ?secondaryPrivateIpAddressCount,
      'secondaryPrivateIpAddresses': ?secondaryPrivateIpAddresses,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory NatGatewayArgs.fromMap(Map<String, dynamic> map) {
    return NatGatewayArgs(
      allocationId: (() { final guardedValue = map['allocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityMode: (() { final guardedValue = map['availabilityMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZoneAddresses: (() { final guardedValue = map['availabilityZoneAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NatGatewayAvailabilityZoneAddress>(guardedValue, (value) => NatGatewayAvailabilityZoneAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      connectivityType: (() { final guardedValue = map['connectivityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIp: (() { final guardedValue = map['privateIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryAllocationIds: (() { final guardedValue = map['secondaryAllocationIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      secondaryPrivateIpAddressCount: (() { final guardedValue = map['secondaryPrivateIpAddressCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      secondaryPrivateIpAddresses: (() { final guardedValue = map['secondaryPrivateIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

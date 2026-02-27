// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../nat_gateway_availability_zone_address/nat_gateway_availability_zone_address.dart';

/// The set of arguments for NatGateway.
class NatGatewayArgs {
  /// The Allocation ID of the Elastic IP address for the NAT Gateway. Required when `connectivity_type` is set to `public` and `availability_mode` is set to `zonal`. When `availability_mode` is set to `regional`, this must not be set; instead, use the `availability_zone_address` block to specify EIPs for each AZ.
  final pulumi.Input<String>? allocationId;

  /// Specifies whether to create a zonal (single-AZ) or regional (multi-AZ) NAT gateway. Valid values are `zonal` and `regional`. Defaults to `zonal`.
  final pulumi.Input<String>? availabilityMode;

  /// Repeatable configuration block for the Elastic IP addresses (EIPs) and availability zones for the regional NAT gateway. When not specified, the regional NAT gateway will automatically expand to new AZs and associate EIPs upon detection of an elastic network interface (auto mode). When specified, auto-expansion is disabled (manual mode). See `availability_zone_address` below for details.
  final pulumi.Input<List<NatGatewayAvailabilityZoneAddress>>?
      availabilityZoneAddresses;

  /// Connectivity type for the NAT Gateway. Valid values are `private` and `public`. When `availability_mode` is set to `regional`, this must be set to `public`. Defaults to `public`.
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

  /// The Subnet ID of the subnet in which to place the NAT Gateway. Required when `availability_mode` is set to `zonal`. Must not be set when `availability_mode` is set to `regional`.
  final pulumi.Input<String>? subnetId;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// VPC ID where this NAT Gateway will be created. Required when `availability_mode` is set to `regional`.
  final pulumi.Input<String>? vpcId;

  NatGatewayArgs({
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
    final map = <String, dynamic>{};
    final allocationIdValue = allocationId;
    if (allocationIdValue != null) {
      map['allocationId'] = allocationIdValue;
    }
    final availabilityModeValue = availabilityMode;
    if (availabilityModeValue != null) {
      map['availabilityMode'] = availabilityModeValue;
    }
    final availabilityZoneAddressesValue = availabilityZoneAddresses;
    if (availabilityZoneAddressesValue != null) {
      map['availabilityZoneAddresses'] = pulumi.Input.mapOptionalInputValue<
              List<NatGatewayAvailabilityZoneAddress>,
              List<Map<String, dynamic>>>(
          availabilityZoneAddressesValue,
          (value) => pulumi.Input.encodeList<NatGatewayAvailabilityZoneAddress,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final connectivityTypeValue = connectivityType;
    if (connectivityTypeValue != null) {
      map['connectivityType'] = connectivityTypeValue;
    }
    final privateIpValue = privateIp;
    if (privateIpValue != null) {
      map['privateIp'] = privateIpValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final secondaryAllocationIdsValue = secondaryAllocationIds;
    if (secondaryAllocationIdsValue != null) {
      map['secondaryAllocationIds'] = secondaryAllocationIdsValue;
    }
    final secondaryPrivateIpAddressCountValue = secondaryPrivateIpAddressCount;
    if (secondaryPrivateIpAddressCountValue != null) {
      map['secondaryPrivateIpAddressCount'] =
          secondaryPrivateIpAddressCountValue;
    }
    final secondaryPrivateIpAddressesValue = secondaryPrivateIpAddresses;
    if (secondaryPrivateIpAddressesValue != null) {
      map['secondaryPrivateIpAddresses'] = secondaryPrivateIpAddressesValue;
    }
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory NatGatewayArgs.fromMap(Map<String, dynamic> map) {
    return NatGatewayArgs(
      allocationId: pulumi.Input.asOptionalInput<String>(map['allocationId']),
      availabilityMode:
          pulumi.Input.asOptionalInput<String>(map['availabilityMode']),
      availabilityZoneAddresses:
          pulumi.Input.asOptionalInput<List<NatGatewayAvailabilityZoneAddress>>(
              map['availabilityZoneAddresses']),
      connectivityType:
          pulumi.Input.asOptionalInput<String>(map['connectivityType']),
      privateIp: pulumi.Input.asOptionalInput<String>(map['privateIp']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      secondaryAllocationIds: pulumi.Input.asOptionalInput<List<String>>(
          map['secondaryAllocationIds']),
      secondaryPrivateIpAddressCount: pulumi.Input.asOptionalInput<int>(
          map['secondaryPrivateIpAddressCount']),
      secondaryPrivateIpAddresses: pulumi.Input.asOptionalInput<List<String>>(
          map['secondaryPrivateIpAddresses']),
      subnetId: pulumi.Input.asOptionalInput<String>(map['subnetId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: pulumi.Input.asOptionalInput<String>(map['vpcId']),
    );
  }
}

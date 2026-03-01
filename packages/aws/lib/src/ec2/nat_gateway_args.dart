// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_availability_zone_address.dart';

/// {@template pulumi_ec2_nat_gateway_nat_gateway_args_doc}
/// The set of arguments for NatGateway.
/// {@endtemplate}
/// {@macro pulumi_ec2_nat_gateway_nat_gateway_args_doc}
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

  /// Creates a new [NatGatewayArgs].
  /// [allocationId] The Allocation ID of the Elastic IP address for the NAT Gateway. Required when `connectivity_type` is set to `public` and `availability_mode` is set to `zonal`. When `availability_mode` is set to `regional`, this must not be set; instead, use the `availability_zone_address` block to specify EIPs for each AZ.
  /// [availabilityMode] Specifies whether to create a zonal (single-AZ) or regional (multi-AZ) NAT gateway. Valid values are `zonal` and `regional`. Defaults to `zonal`.
  /// [availabilityZoneAddresses] Repeatable configuration block for the Elastic IP addresses (EIPs) and availability zones for the regional NAT gateway. When not specified, the regional NAT gateway will automatically expand to new AZs and associate EIPs upon detection of an elastic network interface (auto mode). When specified, auto-expansion is disabled (manual mode). See `availability_zone_address` below for details.
  /// [connectivityType] Connectivity type for the NAT Gateway. Valid values are `private` and `public`. When `availability_mode` is set to `regional`, this must be set to `public`. Defaults to `public`.
  /// [privateIp] The private IPv4 address to assign to the NAT Gateway. If you don't provide an address, a private IPv4 address will be automatically assigned.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secondaryAllocationIds] A list of secondary allocation EIP IDs for this NAT Gateway. To remove all secondary allocations an empty list should be specified.
  /// [secondaryPrivateIpAddressCount] The number of secondary private IPv4 addresses you want to assign to the NAT Gateway.
  /// [secondaryPrivateIpAddresses] A list of secondary private IPv4 addresses to assign to the NAT Gateway. To remove all secondary private addresses an empty list should be specified.
  /// [subnetId] The Subnet ID of the subnet in which to place the NAT Gateway. Required when `availability_mode` is set to `zonal`. Must not be set when `availability_mode` is set to `regional`.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] VPC ID where this NAT Gateway will be created. Required when `availability_mode` is set to `regional`.
  NatGatewayArgs({
    String? allocationId,
    String? availabilityMode,
    List<NatGatewayAvailabilityZoneAddress>? availabilityZoneAddresses,
    String? connectivityType,
    String? privateIp,
    String? region,
    List<String>? secondaryAllocationIds,
    int? secondaryPrivateIpAddressCount,
    List<String>? secondaryPrivateIpAddresses,
    String? subnetId,
    Map<String, String>? tags,
    String? vpcId,
  }) : allocationId = pulumi.Input.asOptionalInput<String>(allocationId),
       availabilityMode = pulumi.Input.asOptionalInput<String>(
         availabilityMode,
       ),
       availabilityZoneAddresses =
           pulumi.Input.asOptionalInput<
             List<NatGatewayAvailabilityZoneAddress>
           >(availabilityZoneAddresses),
       connectivityType = pulumi.Input.asOptionalInput<String>(
         connectivityType,
       ),
       privateIp = pulumi.Input.asOptionalInput<String>(privateIp),
       region = pulumi.Input.asOptionalInput<String>(region),
       secondaryAllocationIds = pulumi.Input.asOptionalInput<List<String>>(
         secondaryAllocationIds,
       ),
       secondaryPrivateIpAddressCount = pulumi.Input.asOptionalInput<int>(
         secondaryPrivateIpAddressCount,
       ),
       secondaryPrivateIpAddresses = pulumi.Input.asOptionalInput<List<String>>(
         secondaryPrivateIpAddresses,
       ),
       subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': ?allocationId,
      'availabilityMode': ?availabilityMode,
      'availabilityZoneAddresses':
          ?pulumi.Input.mapOptionalInputValue<
            List<NatGatewayAvailabilityZoneAddress>,
            List<Map<String, dynamic>>
          >(
            availabilityZoneAddresses,
            (value) =>
                pulumi.Input.encodeList<
                  NatGatewayAvailabilityZoneAddress,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      allocationId: map['allocationId'] == null
          ? null
          : map['allocationId'] as String,
      availabilityMode: map['availabilityMode'] == null
          ? null
          : map['availabilityMode'] as String,
      availabilityZoneAddresses: map['availabilityZoneAddresses'] == null
          ? null
          : pulumi.Input.decodeList<NatGatewayAvailabilityZoneAddress>(
              map['availabilityZoneAddresses'],
              (value) => NatGatewayAvailabilityZoneAddress.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      connectivityType: map['connectivityType'] == null
          ? null
          : map['connectivityType'] as String,
      privateIp: map['privateIp'] == null ? null : map['privateIp'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      secondaryAllocationIds: map['secondaryAllocationIds'] == null
          ? null
          : (map['secondaryAllocationIds'] as List).cast<String>(),
      secondaryPrivateIpAddressCount:
          map['secondaryPrivateIpAddressCount'] == null
          ? null
          : map['secondaryPrivateIpAddressCount'] as int,
      secondaryPrivateIpAddresses: map['secondaryPrivateIpAddresses'] == null
          ? null
          : (map['secondaryPrivateIpAddresses'] as List).cast<String>(),
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

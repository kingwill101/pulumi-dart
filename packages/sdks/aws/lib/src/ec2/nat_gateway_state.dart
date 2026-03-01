// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_availability_zone_address.dart';
import 'nat_gateway_regional_nat_gateway_address.dart';

/// Input properties used for looking up and filtering NatGateway resources.
class NatGatewayState {
  /// The Allocation ID of the Elastic IP address for the NAT Gateway. Required when `connectivity_type` is set to `public` and `availability_mode` is set to `zonal`. When `availability_mode` is set to `regional`, this must not be set; instead, use the `availability_zone_address` block to specify EIPs for each AZ.
  final pulumi.Input<String>? allocationId;
  /// Association ID of the Elastic IP address.
  final pulumi.Input<String>? associationId;
  /// (regional NAT gateways only) Indicates whether AWS automatically manages AZ coverage.
  final pulumi.Input<String>? autoProvisionZones;
  /// (regional NAT gateways only) Indicates whether AWS automatically allocates additional Elastic IP addresses (EIPs) in an AZ when the NAT gateway needs more ports due to increased concurrent connections to a single destination from that AZ.
  final pulumi.Input<String>? autoScalingIps;
  /// Specifies whether to create a zonal (single-AZ) or regional (multi-AZ) NAT gateway. Valid values are `zonal` and `regional`. Defaults to `zonal`.
  final pulumi.Input<String>? availabilityMode;
  /// Repeatable configuration block for the Elastic IP addresses (EIPs) and availability zones for the regional NAT gateway. When not specified, the regional NAT gateway will automatically expand to new AZs and associate EIPs upon detection of an elastic network interface (auto mode). When specified, auto-expansion is disabled (manual mode). See `availability_zone_address` below for details.
  final pulumi.Input<List<NatGatewayAvailabilityZoneAddress>>? availabilityZoneAddresses;
  /// Connectivity type for the NAT Gateway. Valid values are `private` and `public`. When `availability_mode` is set to `regional`, this must be set to `public`. Defaults to `public`.
  final pulumi.Input<String>? connectivityType;
  /// ID of the network interface.
  final pulumi.Input<String>? networkInterfaceId;
  /// The private IPv4 address to assign to the NAT Gateway. If you don't provide an address, a private IPv4 address will be automatically assigned.
  final pulumi.Input<String>? privateIp;
  /// Public IP address.
  final pulumi.Input<String>? publicIp;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// (regional NAT gateways only) Repeatable blocks for information about the IP addresses and network interface associated with the regional NAT gateway.
  final pulumi.Input<List<NatGatewayRegionalNatGatewayAddress>>? regionalNatGatewayAddresses;
  final pulumi.Input<String>? regionalNatGatewayAutoMode;
  /// (regional NAT gateways only) ID of the automatically created route table.
  final pulumi.Input<String>? routeTableId;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// VPC ID where this NAT Gateway will be created. Required when `availability_mode` is set to `regional`.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [NatGatewayState].
  /// [allocationId] The Allocation ID of the Elastic IP address for the NAT Gateway. Required when `connectivity_type` is set to `public` and `availability_mode` is set to `zonal`. When `availability_mode` is set to `regional`, this must not be set; instead, use the `availability_zone_address` block to specify EIPs for each AZ.
  /// [associationId] Association ID of the Elastic IP address.
  /// [autoProvisionZones] (regional NAT gateways only) Indicates whether AWS automatically manages AZ coverage.
  /// [autoScalingIps] (regional NAT gateways only) Indicates whether AWS automatically allocates additional Elastic IP addresses (EIPs) in an AZ when the NAT gateway needs more ports due to increased concurrent connections to a single destination from that AZ.
  /// [availabilityMode] Specifies whether to create a zonal (single-AZ) or regional (multi-AZ) NAT gateway. Valid values are `zonal` and `regional`. Defaults to `zonal`.
  /// [availabilityZoneAddresses] Repeatable configuration block for the Elastic IP addresses (EIPs) and availability zones for the regional NAT gateway. When not specified, the regional NAT gateway will automatically expand to new AZs and associate EIPs upon detection of an elastic network interface (auto mode). When specified, auto-expansion is disabled (manual mode). See `availability_zone_address` below for details.
  /// [connectivityType] Connectivity type for the NAT Gateway. Valid values are `private` and `public`. When `availability_mode` is set to `regional`, this must be set to `public`. Defaults to `public`.
  /// [networkInterfaceId] ID of the network interface.
  /// [privateIp] The private IPv4 address to assign to the NAT Gateway. If you don't provide an address, a private IPv4 address will be automatically assigned.
  /// [publicIp] Public IP address.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regionalNatGatewayAddresses] (regional NAT gateways only) Repeatable blocks for information about the IP addresses and network interface associated with the regional NAT gateway.
  /// [regionalNatGatewayAutoMode] Optional.
  /// [routeTableId] (regional NAT gateways only) ID of the automatically created route table.
  /// [secondaryAllocationIds] A list of secondary allocation EIP IDs for this NAT Gateway. To remove all secondary allocations an empty list should be specified.
  /// [secondaryPrivateIpAddressCount] The number of secondary private IPv4 addresses you want to assign to the NAT Gateway.
  /// [secondaryPrivateIpAddresses] A list of secondary private IPv4 addresses to assign to the NAT Gateway. To remove all secondary private addresses an empty list should be specified.
  /// [subnetId] The Subnet ID of the subnet in which to place the NAT Gateway. Required when `availability_mode` is set to `zonal`. Must not be set when `availability_mode` is set to `regional`.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] VPC ID where this NAT Gateway will be created. Required when `availability_mode` is set to `regional`.
  NatGatewayState({
    pulumi.Output<String>? allocationId,
    pulumi.Output<String>? associationId,
    pulumi.Output<String>? autoProvisionZones,
    pulumi.Output<String>? autoScalingIps,
    pulumi.Output<String>? availabilityMode,
    pulumi.Output<List<NatGatewayAvailabilityZoneAddress>>? availabilityZoneAddresses,
    pulumi.Output<String>? connectivityType,
    pulumi.Output<String>? networkInterfaceId,
    pulumi.Output<String>? privateIp,
    pulumi.Output<String>? publicIp,
    pulumi.Output<String>? region,
    pulumi.Output<List<NatGatewayRegionalNatGatewayAddress>>? regionalNatGatewayAddresses,
    pulumi.Output<String>? regionalNatGatewayAutoMode,
    pulumi.Output<String>? routeTableId,
    pulumi.Output<List<String>>? secondaryAllocationIds,
    pulumi.Output<int>? secondaryPrivateIpAddressCount,
    pulumi.Output<List<String>>? secondaryPrivateIpAddresses,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
  }) :
      allocationId = pulumi.Input.asOptionalInput<String>(allocationId),
      associationId = pulumi.Input.asOptionalInput<String>(associationId),
      autoProvisionZones = pulumi.Input.asOptionalInput<String>(autoProvisionZones),
      autoScalingIps = pulumi.Input.asOptionalInput<String>(autoScalingIps),
      availabilityMode = pulumi.Input.asOptionalInput<String>(availabilityMode),
      availabilityZoneAddresses = pulumi.Input.asOptionalInput<List<NatGatewayAvailabilityZoneAddress>>(availabilityZoneAddresses),
      connectivityType = pulumi.Input.asOptionalInput<String>(connectivityType),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId),
      privateIp = pulumi.Input.asOptionalInput<String>(privateIp),
      publicIp = pulumi.Input.asOptionalInput<String>(publicIp),
      region = pulumi.Input.asOptionalInput<String>(region),
      regionalNatGatewayAddresses = pulumi.Input.asOptionalInput<List<NatGatewayRegionalNatGatewayAddress>>(regionalNatGatewayAddresses),
      regionalNatGatewayAutoMode = pulumi.Input.asOptionalInput<String>(regionalNatGatewayAutoMode),
      routeTableId = pulumi.Input.asOptionalInput<String>(routeTableId),
      secondaryAllocationIds = pulumi.Input.asOptionalInput<List<String>>(secondaryAllocationIds),
      secondaryPrivateIpAddressCount = pulumi.Input.asOptionalInput<int>(secondaryPrivateIpAddressCount),
      secondaryPrivateIpAddresses = pulumi.Input.asOptionalInput<List<String>>(secondaryPrivateIpAddresses),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': ?allocationId,
      'associationId': ?associationId,
      'autoProvisionZones': ?autoProvisionZones,
      'autoScalingIps': ?autoScalingIps,
      'availabilityMode': ?availabilityMode,
      'availabilityZoneAddresses': ?pulumi.Input.mapOptionalInputValue<List<NatGatewayAvailabilityZoneAddress>, List<Map<String, dynamic>>>(availabilityZoneAddresses, (value) => pulumi.Input.encodeList<NatGatewayAvailabilityZoneAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectivityType': ?connectivityType,
      'networkInterfaceId': ?networkInterfaceId,
      'privateIp': ?privateIp,
      'publicIp': ?publicIp,
      'region': ?region,
      'regionalNatGatewayAddresses': ?pulumi.Input.mapOptionalInputValue<List<NatGatewayRegionalNatGatewayAddress>, List<Map<String, dynamic>>>(regionalNatGatewayAddresses, (value) => pulumi.Input.encodeList<NatGatewayRegionalNatGatewayAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regionalNatGatewayAutoMode': ?regionalNatGatewayAutoMode,
      'routeTableId': ?routeTableId,
      'secondaryAllocationIds': ?secondaryAllocationIds,
      'secondaryPrivateIpAddressCount': ?secondaryPrivateIpAddressCount,
      'secondaryPrivateIpAddresses': ?secondaryPrivateIpAddresses,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory NatGatewayState.fromMap(Map<String, dynamic> map) {
    return NatGatewayState(
      allocationId: map['allocationId'] == null ? null : pulumi.Output.create<String>(map['allocationId'] as String),
      associationId: map['associationId'] == null ? null : pulumi.Output.create<String>(map['associationId'] as String),
      autoProvisionZones: map['autoProvisionZones'] == null ? null : pulumi.Output.create<String>(map['autoProvisionZones'] as String),
      autoScalingIps: map['autoScalingIps'] == null ? null : pulumi.Output.create<String>(map['autoScalingIps'] as String),
      availabilityMode: map['availabilityMode'] == null ? null : pulumi.Output.create<String>(map['availabilityMode'] as String),
      availabilityZoneAddresses: map['availabilityZoneAddresses'] == null ? null : pulumi.Output.create<List<NatGatewayAvailabilityZoneAddress>>(pulumi.Input.decodeList<NatGatewayAvailabilityZoneAddress>(map['availabilityZoneAddresses'], (value) => NatGatewayAvailabilityZoneAddress.fromMap((value as Map).cast<String, dynamic>()))),
      connectivityType: map['connectivityType'] == null ? null : pulumi.Output.create<String>(map['connectivityType'] as String),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      privateIp: map['privateIp'] == null ? null : pulumi.Output.create<String>(map['privateIp'] as String),
      publicIp: map['publicIp'] == null ? null : pulumi.Output.create<String>(map['publicIp'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      regionalNatGatewayAddresses: map['regionalNatGatewayAddresses'] == null ? null : pulumi.Output.create<List<NatGatewayRegionalNatGatewayAddress>>(pulumi.Input.decodeList<NatGatewayRegionalNatGatewayAddress>(map['regionalNatGatewayAddresses'], (value) => NatGatewayRegionalNatGatewayAddress.fromMap((value as Map).cast<String, dynamic>()))),
      regionalNatGatewayAutoMode: map['regionalNatGatewayAutoMode'] == null ? null : pulumi.Output.create<String>(map['regionalNatGatewayAutoMode'] as String),
      routeTableId: map['routeTableId'] == null ? null : pulumi.Output.create<String>(map['routeTableId'] as String),
      secondaryAllocationIds: map['secondaryAllocationIds'] == null ? null : pulumi.Output.create<List<String>>((map['secondaryAllocationIds'] as List).cast<String>()),
      secondaryPrivateIpAddressCount: map['secondaryPrivateIpAddressCount'] == null ? null : pulumi.Output.create<int>(map['secondaryPrivateIpAddressCount'] as int),
      secondaryPrivateIpAddresses: map['secondaryPrivateIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['secondaryPrivateIpAddresses'] as List).cast<String>()),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}


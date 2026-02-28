// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nat_gateway_availability_zone_address.dart';
import 'get_nat_gateway_filter.dart';
import 'get_nat_gateway_regional_nat_gateway_address.dart';

/// Result data returned by getNatGateway.
class GetNatGatewayResult {
  /// Allocation ID of the Elastic IP address.
  final String allocationId;

  /// Association ID of the Elastic IP address.
  final String associationId;

  /// (regional NAT gateways only) Indicates whether AWS automatically manages AZ coverage.
  final String autoProvisionZones;

  /// (regional NAT gateways only) Indicates whether AWS automatically allocates additional Elastic IP addresses (EIPs) in an AZ when the NAT gateway needs more ports due to increased concurrent connections to a single destination from that AZ.
  final String autoScalingIps;

  /// Specifies whether to create a zonal (single-AZ) or regional (multi-AZ) NAT gateway.
  final String availabilityMode;

  /// (regional NAT gateways only) Repeatable configuration block for the Elastic IP addresses (EIPs) and availability zones for the regional NAT gateway.
  final List<GetNatGatewayAvailabilityZoneAddress> availabilityZoneAddresses;

  /// Connectivity type of the NAT Gateway.
  final String connectivityType;
  final List<GetNatGatewayFilter>? filters;
  final String id;

  /// ID of the network interface.
  final String networkInterfaceId;

  /// (zonal NAT gateways only) Private IP address of the selected NAT Gateway.
  final String privateIp;

  /// Public IP address.
  final String publicIp;
  final String region;

  /// (regional NAT gateways only) Repeatable blocks for information about the IP addresses and network interface associated with the regional NAT gateway.
  final List<GetNatGatewayRegionalNatGatewayAddress>
      regionalNatGatewayAddresses;

  /// (regional NAT gateways only) ID of the automatically created route table.
  final String routeTableId;

  /// (zonal NAT gateways only) Secondary allocation EIP IDs for the selected NAT Gateway.
  final List<String> secondaryAllocationIds;

  /// (zonal NAT gateways only) The number of secondary private IPv4 addresses assigned to the selected NAT Gateway.
  final int secondaryPrivateIpAddressCount;

  /// (zonal NAT gateways only) Secondary private IPv4 addresses assigned to the selected NAT Gateway.
  final List<String> secondaryPrivateIpAddresses;
  final String state;
  final String subnetId;
  final Map<String, String> tags;
  final String vpcId;

  /// Creates a new [GetNatGatewayResult].
  /// [allocationId] Allocation ID of the Elastic IP address.
  /// [associationId] Association ID of the Elastic IP address.
  /// [autoProvisionZones] (regional NAT gateways only) Indicates whether AWS automatically manages AZ coverage.
  /// [autoScalingIps] (regional NAT gateways only) Indicates whether AWS automatically allocates additional Elastic IP addresses (EIPs) in an AZ when the NAT gateway needs more ports due to increased concurrent connections to a single destination from that AZ.
  /// [availabilityMode] Specifies whether to create a zonal (single-AZ) or regional (multi-AZ) NAT gateway.
  /// [availabilityZoneAddresses] (regional NAT gateways only) Repeatable configuration block for the Elastic IP addresses (EIPs) and availability zones for the regional NAT gateway.
  /// [connectivityType] Connectivity type of the NAT Gateway.
  /// [filters] Optional.
  /// [id] Required.
  /// [networkInterfaceId] ID of the network interface.
  /// [privateIp] (zonal NAT gateways only) Private IP address of the selected NAT Gateway.
  /// [publicIp] Public IP address.
  /// [region] Required.
  /// [regionalNatGatewayAddresses] (regional NAT gateways only) Repeatable blocks for information about the IP addresses and network interface associated with the regional NAT gateway.
  /// [routeTableId] (regional NAT gateways only) ID of the automatically created route table.
  /// [secondaryAllocationIds] (zonal NAT gateways only) Secondary allocation EIP IDs for the selected NAT Gateway.
  /// [secondaryPrivateIpAddressCount] (zonal NAT gateways only) The number of secondary private IPv4 addresses assigned to the selected NAT Gateway.
  /// [secondaryPrivateIpAddresses] (zonal NAT gateways only) Secondary private IPv4 addresses assigned to the selected NAT Gateway.
  /// [state] Required.
  /// [subnetId] Required.
  /// [tags] Required.
  /// [vpcId] Required.
  GetNatGatewayResult({
    required this.allocationId,
    required this.associationId,
    required this.autoProvisionZones,
    required this.autoScalingIps,
    required this.availabilityMode,
    required this.availabilityZoneAddresses,
    required this.connectivityType,
    this.filters,
    required this.id,
    required this.networkInterfaceId,
    required this.privateIp,
    required this.publicIp,
    required this.region,
    required this.regionalNatGatewayAddresses,
    required this.routeTableId,
    required this.secondaryAllocationIds,
    required this.secondaryPrivateIpAddressCount,
    required this.secondaryPrivateIpAddresses,
    required this.state,
    required this.subnetId,
    required this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocationId'] = allocationId;
    map['associationId'] = associationId;
    map['autoProvisionZones'] = autoProvisionZones;
    map['autoScalingIps'] = autoScalingIps;
    map['availabilityMode'] = availabilityMode;
    map['availabilityZoneAddresses'] = pulumi.Input.encodeList<
            GetNatGatewayAvailabilityZoneAddress, Map<String, dynamic>>(
        availabilityZoneAddresses, (value) => value.toMap());
    map['connectivityType'] = connectivityType;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          pulumi.Input.encodeList<GetNatGatewayFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['networkInterfaceId'] = networkInterfaceId;
    map['privateIp'] = privateIp;
    map['publicIp'] = publicIp;
    map['region'] = region;
    map['regionalNatGatewayAddresses'] = pulumi.Input.encodeList<
            GetNatGatewayRegionalNatGatewayAddress, Map<String, dynamic>>(
        regionalNatGatewayAddresses, (value) => value.toMap());
    map['routeTableId'] = routeTableId;
    map['secondaryAllocationIds'] = secondaryAllocationIds;
    map['secondaryPrivateIpAddressCount'] = secondaryPrivateIpAddressCount;
    map['secondaryPrivateIpAddresses'] = secondaryPrivateIpAddresses;
    map['state'] = state;
    map['subnetId'] = subnetId;
    map['tags'] = tags;
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetNatGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetNatGatewayResult(
      allocationId: map['allocationId'] as String,
      associationId: map['associationId'] as String,
      autoProvisionZones: map['autoProvisionZones'] as String,
      autoScalingIps: map['autoScalingIps'] as String,
      availabilityMode: map['availabilityMode'] as String,
      availabilityZoneAddresses:
          pulumi.Input.decodeList<GetNatGatewayAvailabilityZoneAddress>(
              map['availabilityZoneAddresses'],
              (value) => GetNatGatewayAvailabilityZoneAddress.fromMap(
                  (value as Map).cast<String, dynamic>())),
      connectivityType: map['connectivityType'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetNatGatewayFilter>(
              map['filters'],
              (value) => GetNatGatewayFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      privateIp: map['privateIp'] as String,
      publicIp: map['publicIp'] as String,
      region: map['region'] as String,
      regionalNatGatewayAddresses:
          pulumi.Input.decodeList<GetNatGatewayRegionalNatGatewayAddress>(
              map['regionalNatGatewayAddresses'],
              (value) => GetNatGatewayRegionalNatGatewayAddress.fromMap(
                  (value as Map).cast<String, dynamic>())),
      routeTableId: map['routeTableId'] as String,
      secondaryAllocationIds:
          (map['secondaryAllocationIds'] as List).cast<String>(),
      secondaryPrivateIpAddressCount:
          map['secondaryPrivateIpAddressCount'] as int,
      secondaryPrivateIpAddresses:
          (map['secondaryPrivateIpAddresses'] as List).cast<String>(),
      state: map['state'] as String,
      subnetId: map['subnetId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}

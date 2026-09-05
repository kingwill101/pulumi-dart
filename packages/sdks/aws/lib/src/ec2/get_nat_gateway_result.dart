// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nat_gateway_availability_zone_address.dart';
import 'get_nat_gateway_filter.dart';
import 'get_nat_gateway_regional_nat_gateway_address.dart';

/// Result data returned by getNatGateway.
class GetNatGatewayResult {
  /// Allocation ID of the Elastic IP address.
  final String? allocationId;
  /// Association ID of the Elastic IP address.
  final String? associationId;
  /// (regional NAT gateways only) Indicates whether AWS automatically manages AZ coverage.
  final String? autoProvisionZones;
  /// (regional NAT gateways only) Indicates whether AWS automatically allocates additional Elastic IP addresses (EIPs) in an AZ when the NAT gateway needs more ports due to increased concurrent connections to a single destination from that AZ.
  final String? autoScalingIps;
  /// Specifies whether to create a zonal (single-AZ) or regional (multi-AZ) NAT gateway.
  final String? availabilityMode;
  /// (regional NAT gateways only) Repeatable configuration block for the Elastic IP addresses (EIPs) and availability zones for the regional NAT gateway.
  final List<GetNatGatewayAvailabilityZoneAddress>? availabilityZoneAddresses;
  /// Connectivity type of the NAT Gateway.
  final String? connectivityType;
  final List<GetNatGatewayFilter>? filters;
  final String? id;
  /// ID of the network interface.
  final String? networkInterfaceId;
  /// (zonal NAT gateways only) Private IP address of the selected NAT Gateway.
  final String? privateIp;
  /// Public IP address.
  final String? publicIp;
  final String? region;
  /// (regional NAT gateways only) Repeatable blocks for information about the IP addresses and network interface associated with the regional NAT gateway.
  final List<GetNatGatewayRegionalNatGatewayAddress>? regionalNatGatewayAddresses;
  /// (regional NAT gateways only) ID of the automatically created route table.
  final String? routeTableId;
  /// (zonal NAT gateways only) Secondary allocation EIP IDs for the selected NAT Gateway.
  final List<String>? secondaryAllocationIds;
  /// (zonal NAT gateways only) The number of secondary private IPv4 addresses assigned to the selected NAT Gateway.
  final int? secondaryPrivateIpAddressCount;
  /// (zonal NAT gateways only) Secondary private IPv4 addresses assigned to the selected NAT Gateway.
  final List<String>? secondaryPrivateIpAddresses;
  final String? state;
  final String? subnetId;
  final Map<String, String>? tags;
  final String? vpcId;

  /// Creates a new [GetNatGatewayResult].
  /// [allocationId] Allocation ID of the Elastic IP address.
  /// [associationId] Association ID of the Elastic IP address.
  /// [autoProvisionZones] (regional NAT gateways only) Indicates whether AWS automatically manages AZ coverage.
  /// [autoScalingIps] (regional NAT gateways only) Indicates whether AWS automatically allocates additional Elastic IP addresses (EIPs) in an AZ when the NAT gateway needs more ports due to increased concurrent connections to a single destination from that AZ.
  /// [availabilityMode] Specifies whether to create a zonal (single-AZ) or regional (multi-AZ) NAT gateway.
  /// [availabilityZoneAddresses] (regional NAT gateways only) Repeatable configuration block for the Elastic IP addresses (EIPs) and availability zones for the regional NAT gateway.
  /// [connectivityType] Connectivity type of the NAT Gateway.
  /// [filters] Optional.
  /// [id] Optional.
  /// [networkInterfaceId] ID of the network interface.
  /// [privateIp] (zonal NAT gateways only) Private IP address of the selected NAT Gateway.
  /// [publicIp] Public IP address.
  /// [region] Optional.
  /// [regionalNatGatewayAddresses] (regional NAT gateways only) Repeatable blocks for information about the IP addresses and network interface associated with the regional NAT gateway.
  /// [routeTableId] (regional NAT gateways only) ID of the automatically created route table.
  /// [secondaryAllocationIds] (zonal NAT gateways only) Secondary allocation EIP IDs for the selected NAT Gateway.
  /// [secondaryPrivateIpAddressCount] (zonal NAT gateways only) The number of secondary private IPv4 addresses assigned to the selected NAT Gateway.
  /// [secondaryPrivateIpAddresses] (zonal NAT gateways only) Secondary private IPv4 addresses assigned to the selected NAT Gateway.
  /// [state] Optional.
  /// [subnetId] Optional.
  /// [tags] Optional.
  /// [vpcId] Optional.
  const GetNatGatewayResult({
    this.allocationId,
    this.associationId,
    this.autoProvisionZones,
    this.autoScalingIps,
    this.availabilityMode,
    this.availabilityZoneAddresses,
    this.connectivityType,
    this.filters,
    this.id,
    this.networkInterfaceId,
    this.privateIp,
    this.publicIp,
    this.region,
    this.regionalNatGatewayAddresses,
    this.routeTableId,
    this.secondaryAllocationIds,
    this.secondaryPrivateIpAddressCount,
    this.secondaryPrivateIpAddresses,
    this.state,
    this.subnetId,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': ?allocationId,
      'associationId': ?associationId,
      'autoProvisionZones': ?autoProvisionZones,
      'autoScalingIps': ?autoScalingIps,
      'availabilityMode': ?availabilityMode,
      'availabilityZoneAddresses': ?(() { final guardedValue = availabilityZoneAddresses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNatGatewayAvailabilityZoneAddress, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'connectivityType': ?connectivityType,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNatGatewayFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'networkInterfaceId': ?networkInterfaceId,
      'privateIp': ?privateIp,
      'publicIp': ?publicIp,
      'region': ?region,
      'regionalNatGatewayAddresses': ?(() { final guardedValue = regionalNatGatewayAddresses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNatGatewayRegionalNatGatewayAddress, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'routeTableId': ?routeTableId,
      'secondaryAllocationIds': ?secondaryAllocationIds,
      'secondaryPrivateIpAddressCount': ?secondaryPrivateIpAddressCount,
      'secondaryPrivateIpAddresses': ?secondaryPrivateIpAddresses,
      'state': ?state,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetNatGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetNatGatewayResult(
      allocationId: (() { final guardedValue = map['allocationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      associationId: (() { final guardedValue = map['associationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoProvisionZones: (() { final guardedValue = map['autoProvisionZones']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoScalingIps: (() { final guardedValue = map['autoScalingIps']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityMode: (() { final guardedValue = map['availabilityMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZoneAddresses: (() { final guardedValue = map['availabilityZoneAddresses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNatGatewayAvailabilityZoneAddress>(guardedValue, (value) => GetNatGatewayAvailabilityZoneAddress.fromMap((value as Map).cast<String, dynamic>())); })(),
      connectivityType: (() { final guardedValue = map['connectivityType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNatGatewayFilter>(guardedValue, (value) => GetNatGatewayFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateIp: (() { final guardedValue = map['privateIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicIp: (() { final guardedValue = map['publicIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regionalNatGatewayAddresses: (() { final guardedValue = map['regionalNatGatewayAddresses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNatGatewayRegionalNatGatewayAddress>(guardedValue, (value) => GetNatGatewayRegionalNatGatewayAddress.fromMap((value as Map).cast<String, dynamic>())); })(),
      routeTableId: (() { final guardedValue = map['routeTableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryAllocationIds: (() { final guardedValue = map['secondaryAllocationIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      secondaryPrivateIpAddressCount: (() { final guardedValue = map['secondaryPrivateIpAddressCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      secondaryPrivateIpAddresses: (() { final guardedValue = map['secondaryPrivateIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

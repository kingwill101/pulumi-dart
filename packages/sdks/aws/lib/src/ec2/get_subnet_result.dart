// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnet_filter.dart';

/// Result data returned by getSubnet.
class GetSubnetResult {
  /// ARN of the subnet.
  final String? arn;
  /// Whether an IPv6 address is assigned on creation.
  final bool? assignIpv6AddressOnCreation;
  final String? availabilityZone;
  final String? availabilityZoneId;
  /// Available IP addresses of the subnet.
  final int? availableIpAddressCount;
  final String? cidrBlock;
  /// Identifier of customer owned IPv4 address pool.
  final String? customerOwnedIpv4Pool;
  final bool? defaultForAz;
  /// Whether DNS queries made to the Amazon-provided DNS Resolver in this subnet return synthetic IPv6 addresses for IPv4-only destinations.
  final bool? enableDns64;
  /// Indicates the device position for local network interfaces in this subnet. For example, 1 indicates local network interfaces in this subnet are the secondary network interface (eth1). A local network interface cannot be the primary network interface (eth0).
  final int? enableLniAtDeviceIndex;
  /// Indicates whether to respond to DNS queries for instance hostnames with DNS A records.
  final bool? enableResourceNameDnsARecordOnLaunch;
  /// Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.
  final bool? enableResourceNameDnsAaaaRecordOnLaunch;
  final List<GetSubnetFilter>? filters;
  final String? id;
  final String? ipv6CidrBlock;
  /// Association ID of the IPv6 CIDR block.
  final String? ipv6CidrBlockAssociationId;
  /// Whether this is an IPv6-only subnet.
  final bool? ipv6Native;
  /// Whether customer owned IP addresses are assigned on network interface creation.
  final bool? mapCustomerOwnedIpOnLaunch;
  /// Whether public IP addresses are assigned on instance launch.
  final bool? mapPublicIpOnLaunch;
  /// ARN of the Outpost.
  final String? outpostArn;
  /// ID of the AWS account that owns the subnet.
  final String? ownerId;
  /// The type of hostnames assigned to instances in the subnet at launch.
  final String? privateDnsHostnameTypeOnLaunch;
  final String? region;
  final String? state;
  final Map<String, String>? tags;
  final String? vpcId;

  /// Creates a new [GetSubnetResult].
  /// [arn] ARN of the subnet.
  /// [assignIpv6AddressOnCreation] Whether an IPv6 address is assigned on creation.
  /// [availabilityZone] Optional.
  /// [availabilityZoneId] Optional.
  /// [availableIpAddressCount] Available IP addresses of the subnet.
  /// [cidrBlock] Optional.
  /// [customerOwnedIpv4Pool] Identifier of customer owned IPv4 address pool.
  /// [defaultForAz] Optional.
  /// [enableDns64] Whether DNS queries made to the Amazon-provided DNS Resolver in this subnet return synthetic IPv6 addresses for IPv4-only destinations.
  /// [enableLniAtDeviceIndex] Indicates the device position for local network interfaces in this subnet. For example, 1 indicates local network interfaces in this subnet are the secondary network interface (eth1). A local network interface cannot be the primary network interface (eth0).
  /// [enableResourceNameDnsARecordOnLaunch] Indicates whether to respond to DNS queries for instance hostnames with DNS A records.
  /// [enableResourceNameDnsAaaaRecordOnLaunch] Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.
  /// [filters] Optional.
  /// [id] Optional.
  /// [ipv6CidrBlock] Optional.
  /// [ipv6CidrBlockAssociationId] Association ID of the IPv6 CIDR block.
  /// [ipv6Native] Whether this is an IPv6-only subnet.
  /// [mapCustomerOwnedIpOnLaunch] Whether customer owned IP addresses are assigned on network interface creation.
  /// [mapPublicIpOnLaunch] Whether public IP addresses are assigned on instance launch.
  /// [outpostArn] ARN of the Outpost.
  /// [ownerId] ID of the AWS account that owns the subnet.
  /// [privateDnsHostnameTypeOnLaunch] The type of hostnames assigned to instances in the subnet at launch.
  /// [region] Optional.
  /// [state] Optional.
  /// [tags] Optional.
  /// [vpcId] Optional.
  const GetSubnetResult({
    this.arn,
    this.assignIpv6AddressOnCreation,
    this.availabilityZone,
    this.availabilityZoneId,
    this.availableIpAddressCount,
    this.cidrBlock,
    this.customerOwnedIpv4Pool,
    this.defaultForAz,
    this.enableDns64,
    this.enableLniAtDeviceIndex,
    this.enableResourceNameDnsARecordOnLaunch,
    this.enableResourceNameDnsAaaaRecordOnLaunch,
    this.filters,
    this.id,
    this.ipv6CidrBlock,
    this.ipv6CidrBlockAssociationId,
    this.ipv6Native,
    this.mapCustomerOwnedIpOnLaunch,
    this.mapPublicIpOnLaunch,
    this.outpostArn,
    this.ownerId,
    this.privateDnsHostnameTypeOnLaunch,
    this.region,
    this.state,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'assignIpv6AddressOnCreation': ?assignIpv6AddressOnCreation,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
      'availableIpAddressCount': ?availableIpAddressCount,
      'cidrBlock': ?cidrBlock,
      'customerOwnedIpv4Pool': ?customerOwnedIpv4Pool,
      'defaultForAz': ?defaultForAz,
      'enableDns64': ?enableDns64,
      'enableLniAtDeviceIndex': ?enableLniAtDeviceIndex,
      'enableResourceNameDnsARecordOnLaunch': ?enableResourceNameDnsARecordOnLaunch,
      'enableResourceNameDnsAaaaRecordOnLaunch': ?enableResourceNameDnsAaaaRecordOnLaunch,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSubnetFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'ipv6CidrBlockAssociationId': ?ipv6CidrBlockAssociationId,
      'ipv6Native': ?ipv6Native,
      'mapCustomerOwnedIpOnLaunch': ?mapCustomerOwnedIpOnLaunch,
      'mapPublicIpOnLaunch': ?mapPublicIpOnLaunch,
      'outpostArn': ?outpostArn,
      'ownerId': ?ownerId,
      'privateDnsHostnameTypeOnLaunch': ?privateDnsHostnameTypeOnLaunch,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetSubnetResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      assignIpv6AddressOnCreation: (() { final guardedValue = map['assignIpv6AddressOnCreation']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availableIpAddressCount: (() { final guardedValue = map['availableIpAddressCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerOwnedIpv4Pool: (() { final guardedValue = map['customerOwnedIpv4Pool']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultForAz: (() { final guardedValue = map['defaultForAz']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableDns64: (() { final guardedValue = map['enableDns64']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableLniAtDeviceIndex: (() { final guardedValue = map['enableLniAtDeviceIndex']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      enableResourceNameDnsARecordOnLaunch: (() { final guardedValue = map['enableResourceNameDnsARecordOnLaunch']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableResourceNameDnsAaaaRecordOnLaunch: (() { final guardedValue = map['enableResourceNameDnsAaaaRecordOnLaunch']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSubnetFilter>(guardedValue, (value) => GetSubnetFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6CidrBlock: (() { final guardedValue = map['ipv6CidrBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6CidrBlockAssociationId: (() { final guardedValue = map['ipv6CidrBlockAssociationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6Native: (() { final guardedValue = map['ipv6Native']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      mapCustomerOwnedIpOnLaunch: (() { final guardedValue = map['mapCustomerOwnedIpOnLaunch']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      mapPublicIpOnLaunch: (() { final guardedValue = map['mapPublicIpOnLaunch']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateDnsHostnameTypeOnLaunch: (() { final guardedValue = map['privateDnsHostnameTypeOnLaunch']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

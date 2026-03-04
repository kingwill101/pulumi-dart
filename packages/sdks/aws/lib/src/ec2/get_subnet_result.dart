// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnet_filter.dart';

/// Result data returned by getSubnet.
class GetSubnetResult {
  /// ARN of the subnet.
  final String arn;

  /// Whether an IPv6 address is assigned on creation.
  final bool assignIpv6AddressOnCreation;
  final String availabilityZone;
  final String availabilityZoneId;

  /// Available IP addresses of the subnet.
  final int availableIpAddressCount;
  final String cidrBlock;

  /// Identifier of customer owned IPv4 address pool.
  final String customerOwnedIpv4Pool;
  final bool defaultForAz;

  /// Whether DNS queries made to the Amazon-provided DNS Resolver in this subnet return synthetic IPv6 addresses for IPv4-only destinations.
  final bool enableDns64;

  /// Indicates the device position for local network interfaces in this subnet. For example, 1 indicates local network interfaces in this subnet are the secondary network interface (eth1). A local network interface cannot be the primary network interface (eth0).
  final int enableLniAtDeviceIndex;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS A records.
  final bool enableResourceNameDnsARecordOnLaunch;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.
  final bool enableResourceNameDnsAaaaRecordOnLaunch;
  final List<GetSubnetFilter>? filters;
  final String id;
  final String ipv6CidrBlock;

  /// Association ID of the IPv6 CIDR block.
  final String ipv6CidrBlockAssociationId;

  /// Whether this is an IPv6-only subnet.
  final bool ipv6Native;

  /// Whether customer owned IP addresses are assigned on network interface creation.
  final bool mapCustomerOwnedIpOnLaunch;

  /// Whether public IP addresses are assigned on instance launch.
  final bool mapPublicIpOnLaunch;

  /// ARN of the Outpost.
  final String outpostArn;

  /// ID of the AWS account that owns the subnet.
  final String ownerId;

  /// The type of hostnames assigned to instances in the subnet at launch.
  final String privateDnsHostnameTypeOnLaunch;
  final String region;
  final String state;
  final Map<String, String> tags;
  final String vpcId;

  /// Creates a new [GetSubnetResult].
  /// [arn] ARN of the subnet.
  /// [assignIpv6AddressOnCreation] Whether an IPv6 address is assigned on creation.
  /// [availabilityZone] Required.
  /// [availabilityZoneId] Required.
  /// [availableIpAddressCount] Available IP addresses of the subnet.
  /// [cidrBlock] Required.
  /// [customerOwnedIpv4Pool] Identifier of customer owned IPv4 address pool.
  /// [defaultForAz] Required.
  /// [enableDns64] Whether DNS queries made to the Amazon-provided DNS Resolver in this subnet return synthetic IPv6 addresses for IPv4-only destinations.
  /// [enableLniAtDeviceIndex] Indicates the device position for local network interfaces in this subnet. For example, 1 indicates local network interfaces in this subnet are the secondary network interface (eth1). A local network interface cannot be the primary network interface (eth0).
  /// [enableResourceNameDnsARecordOnLaunch] Indicates whether to respond to DNS queries for instance hostnames with DNS A records.
  /// [enableResourceNameDnsAaaaRecordOnLaunch] Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.
  /// [filters] Optional.
  /// [id] Required.
  /// [ipv6CidrBlock] Required.
  /// [ipv6CidrBlockAssociationId] Association ID of the IPv6 CIDR block.
  /// [ipv6Native] Whether this is an IPv6-only subnet.
  /// [mapCustomerOwnedIpOnLaunch] Whether customer owned IP addresses are assigned on network interface creation.
  /// [mapPublicIpOnLaunch] Whether public IP addresses are assigned on instance launch.
  /// [outpostArn] ARN of the Outpost.
  /// [ownerId] ID of the AWS account that owns the subnet.
  /// [privateDnsHostnameTypeOnLaunch] The type of hostnames assigned to instances in the subnet at launch.
  /// [region] Required.
  /// [state] Required.
  /// [tags] Required.
  /// [vpcId] Required.
  GetSubnetResult({
    required this.arn,
    required this.assignIpv6AddressOnCreation,
    required this.availabilityZone,
    required this.availabilityZoneId,
    required this.availableIpAddressCount,
    required this.cidrBlock,
    required this.customerOwnedIpv4Pool,
    required this.defaultForAz,
    required this.enableDns64,
    required this.enableLniAtDeviceIndex,
    required this.enableResourceNameDnsARecordOnLaunch,
    required this.enableResourceNameDnsAaaaRecordOnLaunch,
    this.filters,
    required this.id,
    required this.ipv6CidrBlock,
    required this.ipv6CidrBlockAssociationId,
    required this.ipv6Native,
    required this.mapCustomerOwnedIpOnLaunch,
    required this.mapPublicIpOnLaunch,
    required this.outpostArn,
    required this.ownerId,
    required this.privateDnsHostnameTypeOnLaunch,
    required this.region,
    required this.state,
    required this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'assignIpv6AddressOnCreation': assignIpv6AddressOnCreation,
      'availabilityZone': availabilityZone,
      'availabilityZoneId': availabilityZoneId,
      'availableIpAddressCount': availableIpAddressCount,
      'cidrBlock': cidrBlock,
      'customerOwnedIpv4Pool': customerOwnedIpv4Pool,
      'defaultForAz': defaultForAz,
      'enableDns64': enableDns64,
      'enableLniAtDeviceIndex': enableLniAtDeviceIndex,
      'enableResourceNameDnsARecordOnLaunch':
          enableResourceNameDnsARecordOnLaunch,
      'enableResourceNameDnsAaaaRecordOnLaunch':
          enableResourceNameDnsAaaaRecordOnLaunch,
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<GetSubnetFilter, Map<String, dynamic>>(
          guardedValue,
          (value) => value.toMap(),
        );
      })(),
      'id': id,
      'ipv6CidrBlock': ipv6CidrBlock,
      'ipv6CidrBlockAssociationId': ipv6CidrBlockAssociationId,
      'ipv6Native': ipv6Native,
      'mapCustomerOwnedIpOnLaunch': mapCustomerOwnedIpOnLaunch,
      'mapPublicIpOnLaunch': mapPublicIpOnLaunch,
      'outpostArn': outpostArn,
      'ownerId': ownerId,
      'privateDnsHostnameTypeOnLaunch': privateDnsHostnameTypeOnLaunch,
      'region': region,
      'state': state,
      'tags': tags,
      'vpcId': vpcId,
    };
  }

  factory GetSubnetResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetResult(
      arn: map['arn'] as String,
      assignIpv6AddressOnCreation: map['assignIpv6AddressOnCreation'] as bool,
      availabilityZone: map['availabilityZone'] as String,
      availabilityZoneId: map['availabilityZoneId'] as String,
      availableIpAddressCount: map['availableIpAddressCount'] as int,
      cidrBlock: map['cidrBlock'] as String,
      customerOwnedIpv4Pool: map['customerOwnedIpv4Pool'] as String,
      defaultForAz: map['defaultForAz'] as bool,
      enableDns64: map['enableDns64'] as bool,
      enableLniAtDeviceIndex: map['enableLniAtDeviceIndex'] as int,
      enableResourceNameDnsARecordOnLaunch:
          map['enableResourceNameDnsARecordOnLaunch'] as bool,
      enableResourceNameDnsAaaaRecordOnLaunch:
          map['enableResourceNameDnsAaaaRecordOnLaunch'] as bool,
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetSubnetFilter>(
          guardedValue,
          (value) =>
              GetSubnetFilter.fromMap((value as Map).cast<String, dynamic>()),
        );
      })(),
      id: map['id'] as String,
      ipv6CidrBlock: map['ipv6CidrBlock'] as String,
      ipv6CidrBlockAssociationId: map['ipv6CidrBlockAssociationId'] as String,
      ipv6Native: map['ipv6Native'] as bool,
      mapCustomerOwnedIpOnLaunch: map['mapCustomerOwnedIpOnLaunch'] as bool,
      mapPublicIpOnLaunch: map['mapPublicIpOnLaunch'] as bool,
      outpostArn: map['outpostArn'] as String,
      ownerId: map['ownerId'] as String,
      privateDnsHostnameTypeOnLaunch:
          map['privateDnsHostnameTypeOnLaunch'] as String,
      region: map['region'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}

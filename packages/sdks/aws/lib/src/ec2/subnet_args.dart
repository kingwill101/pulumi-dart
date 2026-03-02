// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_subnet_subnet_args_doc}
/// The set of arguments for Subnet.
/// {@endtemplate}
/// {@macro pulumi_ec2_subnet_subnet_args_doc}
class SubnetArgs {
  /// Specify true to indicate
  /// that network interfaces created in the specified subnet should be
  /// assigned an IPv6 address. Default is `false`
  final pulumi.Input<bool>? assignIpv6AddressOnCreation;
  /// AZ for the subnet.
  final pulumi.Input<String>? availabilityZone;
  /// AZ ID of the subnet. This argument is not supported in all regions or partitions. If necessary, use `availability_zone` instead.
  final pulumi.Input<String>? availabilityZoneId;
  /// The IPv4 CIDR block for the subnet.
  final pulumi.Input<String>? cidrBlock;
  /// The customer owned IPv4 address pool. Typically used with the `map_customer_owned_ip_on_launch` argument. The `outpost_arn` argument must be specified when configured.
  final pulumi.Input<String>? customerOwnedIpv4Pool;
  /// Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations. Default: `false`.
  final pulumi.Input<bool>? enableDns64;
  /// Indicates the device position for local network interfaces in this subnet. For example, 1 indicates local network interfaces in this subnet are the secondary network interface (eth1). A local network interface cannot be the primary network interface (eth0).
  final pulumi.Input<int>? enableLniAtDeviceIndex;
  /// Indicates whether to respond to DNS queries for instance hostnames with DNS A records. Default: `false`.
  final pulumi.Input<bool>? enableResourceNameDnsARecordOnLaunch;
  /// Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records. Default: `false`.
  final pulumi.Input<bool>? enableResourceNameDnsAaaaRecordOnLaunch;
  /// ID of an IPv4 VPC Resource Planning IPAM Pool. The CIDR of this pool is used to allocate the CIDR for the subnet.
  final pulumi.Input<String>? ipv4IpamPoolId;
  /// Netmask. Requires specifying a `ipv4_ipam_pool_id`.
  final pulumi.Input<int>? ipv4NetmaskLength;
  /// The IPv6 network range for the subnet,
  /// in CIDR notation. The subnet size must use a /64 prefix length. If the existing IPv6 subnet was created with `assign_ipv6_address_on_creation = true`, changing this value will force resource recreation.
  final pulumi.Input<String>? ipv6CidrBlock;
  /// ID of an IPv6 VPC Resource Planning IPAM Pool. The CIDR of this pool is used to allocate the CIDR for the subnet.
  final pulumi.Input<String>? ipv6IpamPoolId;
  /// Indicates whether to create an IPv6-only subnet. Default: `false`.
  final pulumi.Input<bool>? ipv6Native;
  /// Netmask. Requires specifying a `ipv6_ipam_pool_id`. Valid values are from 44 to 64 in increments of 4.
  final pulumi.Input<int>? ipv6NetmaskLength;
  /// Specify `true` to indicate that network interfaces created in the subnet should be assigned a customer owned IP address. The `customer_owned_ipv4_pool` and `outpost_arn` arguments must be specified when set to `true`. Default is `false`.
  final pulumi.Input<bool>? mapCustomerOwnedIpOnLaunch;
  /// Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is `false`.
  final pulumi.Input<bool>? mapPublicIpOnLaunch;
  /// The Amazon Resource Name (ARN) of the Outpost.
  final pulumi.Input<String>? outpostArn;
  /// The type of hostnames to assign to instances in the subnet at launch. For IPv6-only subnets, an instance DNS name must be based on the instance ID. For dual-stack and IPv4-only subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: `ip-name`, `resource-name`.
  final pulumi.Input<String>? privateDnsHostnameTypeOnLaunch;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC ID.
  final pulumi.Input<String> vpcId;

  /// Creates a new [SubnetArgs].
  /// [assignIpv6AddressOnCreation] Specify true to indicate
  /// [availabilityZone] AZ for the subnet.
  /// [availabilityZoneId] AZ ID of the subnet. This argument is not supported in all regions or partitions. If necessary, use `availability_zone` instead.
  /// [cidrBlock] The IPv4 CIDR block for the subnet.
  /// [customerOwnedIpv4Pool] The customer owned IPv4 address pool. Typically used with the `map_customer_owned_ip_on_launch` argument. The `outpost_arn` argument must be specified when configured.
  /// [enableDns64] Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations. Default: `false`.
  /// [enableLniAtDeviceIndex] Indicates the device position for local network interfaces in this subnet. For example, 1 indicates local network interfaces in this subnet are the secondary network interface (eth1). A local network interface cannot be the primary network interface (eth0).
  /// [enableResourceNameDnsARecordOnLaunch] Indicates whether to respond to DNS queries for instance hostnames with DNS A records. Default: `false`.
  /// [enableResourceNameDnsAaaaRecordOnLaunch] Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records. Default: `false`.
  /// [ipv4IpamPoolId] ID of an IPv4 VPC Resource Planning IPAM Pool. The CIDR of this pool is used to allocate the CIDR for the subnet.
  /// [ipv4NetmaskLength] Netmask. Requires specifying a `ipv4_ipam_pool_id`.
  /// [ipv6CidrBlock] The IPv6 network range for the subnet,
  /// [ipv6IpamPoolId] ID of an IPv6 VPC Resource Planning IPAM Pool. The CIDR of this pool is used to allocate the CIDR for the subnet.
  /// [ipv6Native] Indicates whether to create an IPv6-only subnet. Default: `false`.
  /// [ipv6NetmaskLength] Netmask. Requires specifying a `ipv6_ipam_pool_id`. Valid values are from 44 to 64 in increments of 4.
  /// [mapCustomerOwnedIpOnLaunch] Specify `true` to indicate that network interfaces created in the subnet should be assigned a customer owned IP address. The `customer_owned_ipv4_pool` and `outpost_arn` arguments must be specified when set to `true`. Default is `false`.
  /// [mapPublicIpOnLaunch] Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is `false`.
  /// [outpostArn] The Amazon Resource Name (ARN) of the Outpost.
  /// [privateDnsHostnameTypeOnLaunch] The type of hostnames to assign to instances in the subnet at launch. For IPv6-only subnets, an instance DNS name must be based on the instance ID. For dual-stack and IPv4-only subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: `ip-name`, `resource-name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] The VPC ID.
  SubnetArgs({
    this.assignIpv6AddressOnCreation,
    this.availabilityZone,
    this.availabilityZoneId,
    this.cidrBlock,
    this.customerOwnedIpv4Pool,
    this.enableDns64,
    this.enableLniAtDeviceIndex,
    this.enableResourceNameDnsARecordOnLaunch,
    this.enableResourceNameDnsAaaaRecordOnLaunch,
    this.ipv4IpamPoolId,
    this.ipv4NetmaskLength,
    this.ipv6CidrBlock,
    this.ipv6IpamPoolId,
    this.ipv6Native,
    this.ipv6NetmaskLength,
    this.mapCustomerOwnedIpOnLaunch,
    this.mapPublicIpOnLaunch,
    this.outpostArn,
    this.privateDnsHostnameTypeOnLaunch,
    this.region,
    this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignIpv6AddressOnCreation': ?assignIpv6AddressOnCreation,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
      'cidrBlock': ?cidrBlock,
      'customerOwnedIpv4Pool': ?customerOwnedIpv4Pool,
      'enableDns64': ?enableDns64,
      'enableLniAtDeviceIndex': ?enableLniAtDeviceIndex,
      'enableResourceNameDnsARecordOnLaunch': ?enableResourceNameDnsARecordOnLaunch,
      'enableResourceNameDnsAaaaRecordOnLaunch': ?enableResourceNameDnsAaaaRecordOnLaunch,
      'ipv4IpamPoolId': ?ipv4IpamPoolId,
      'ipv4NetmaskLength': ?ipv4NetmaskLength,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'ipv6IpamPoolId': ?ipv6IpamPoolId,
      'ipv6Native': ?ipv6Native,
      'ipv6NetmaskLength': ?ipv6NetmaskLength,
      'mapCustomerOwnedIpOnLaunch': ?mapCustomerOwnedIpOnLaunch,
      'mapPublicIpOnLaunch': ?mapPublicIpOnLaunch,
      'outpostArn': ?outpostArn,
      'privateDnsHostnameTypeOnLaunch': ?privateDnsHostnameTypeOnLaunch,
      'region': ?region,
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory SubnetArgs.fromMap(Map<String, dynamic> map) {
    return SubnetArgs(
      assignIpv6AddressOnCreation: map['assignIpv6AddressOnCreation'] == null ? null : ((map['assignIpv6AddressOnCreation'] as bool).input()).input(),
      availabilityZone: map['availabilityZone'] == null ? null : ((map['availabilityZone'] as String).input()).input(),
      availabilityZoneId: map['availabilityZoneId'] == null ? null : ((map['availabilityZoneId'] as String).input()).input(),
      cidrBlock: map['cidrBlock'] == null ? null : ((map['cidrBlock'] as String).input()).input(),
      customerOwnedIpv4Pool: map['customerOwnedIpv4Pool'] == null ? null : ((map['customerOwnedIpv4Pool'] as String).input()).input(),
      enableDns64: map['enableDns64'] == null ? null : ((map['enableDns64'] as bool).input()).input(),
      enableLniAtDeviceIndex: map['enableLniAtDeviceIndex'] == null ? null : ((map['enableLniAtDeviceIndex'] as int).input()).input(),
      enableResourceNameDnsARecordOnLaunch: map['enableResourceNameDnsARecordOnLaunch'] == null ? null : ((map['enableResourceNameDnsARecordOnLaunch'] as bool).input()).input(),
      enableResourceNameDnsAaaaRecordOnLaunch: map['enableResourceNameDnsAaaaRecordOnLaunch'] == null ? null : ((map['enableResourceNameDnsAaaaRecordOnLaunch'] as bool).input()).input(),
      ipv4IpamPoolId: map['ipv4IpamPoolId'] == null ? null : ((map['ipv4IpamPoolId'] as String).input()).input(),
      ipv4NetmaskLength: map['ipv4NetmaskLength'] == null ? null : ((map['ipv4NetmaskLength'] as int).input()).input(),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : ((map['ipv6CidrBlock'] as String).input()).input(),
      ipv6IpamPoolId: map['ipv6IpamPoolId'] == null ? null : ((map['ipv6IpamPoolId'] as String).input()).input(),
      ipv6Native: map['ipv6Native'] == null ? null : ((map['ipv6Native'] as bool).input()).input(),
      ipv6NetmaskLength: map['ipv6NetmaskLength'] == null ? null : ((map['ipv6NetmaskLength'] as int).input()).input(),
      mapCustomerOwnedIpOnLaunch: map['mapCustomerOwnedIpOnLaunch'] == null ? null : ((map['mapCustomerOwnedIpOnLaunch'] as bool).input()).input(),
      mapPublicIpOnLaunch: map['mapPublicIpOnLaunch'] == null ? null : ((map['mapPublicIpOnLaunch'] as bool).input()).input(),
      outpostArn: map['outpostArn'] == null ? null : ((map['outpostArn'] as String).input()).input(),
      privateDnsHostnameTypeOnLaunch: map['privateDnsHostnameTypeOnLaunch'] == null ? null : ((map['privateDnsHostnameTypeOnLaunch'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}


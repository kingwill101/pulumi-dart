// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Subnet.
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
    final map = <String, dynamic>{};
    final assignIpv6AddressOnCreationValue = assignIpv6AddressOnCreation;
    if (assignIpv6AddressOnCreationValue != null) {
      map['assignIpv6AddressOnCreation'] = assignIpv6AddressOnCreationValue;
    }
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final availabilityZoneIdValue = availabilityZoneId;
    if (availabilityZoneIdValue != null) {
      map['availabilityZoneId'] = availabilityZoneIdValue;
    }
    final cidrBlockValue = cidrBlock;
    if (cidrBlockValue != null) {
      map['cidrBlock'] = cidrBlockValue;
    }
    final customerOwnedIpv4PoolValue = customerOwnedIpv4Pool;
    if (customerOwnedIpv4PoolValue != null) {
      map['customerOwnedIpv4Pool'] = customerOwnedIpv4PoolValue;
    }
    final enableDns64Value = enableDns64;
    if (enableDns64Value != null) {
      map['enableDns64'] = enableDns64Value;
    }
    final enableLniAtDeviceIndexValue = enableLniAtDeviceIndex;
    if (enableLniAtDeviceIndexValue != null) {
      map['enableLniAtDeviceIndex'] = enableLniAtDeviceIndexValue;
    }
    final enableResourceNameDnsARecordOnLaunchValue =
        enableResourceNameDnsARecordOnLaunch;
    if (enableResourceNameDnsARecordOnLaunchValue != null) {
      map['enableResourceNameDnsARecordOnLaunch'] =
          enableResourceNameDnsARecordOnLaunchValue;
    }
    final enableResourceNameDnsAaaaRecordOnLaunchValue =
        enableResourceNameDnsAaaaRecordOnLaunch;
    if (enableResourceNameDnsAaaaRecordOnLaunchValue != null) {
      map['enableResourceNameDnsAaaaRecordOnLaunch'] =
          enableResourceNameDnsAaaaRecordOnLaunchValue;
    }
    final ipv4IpamPoolIdValue = ipv4IpamPoolId;
    if (ipv4IpamPoolIdValue != null) {
      map['ipv4IpamPoolId'] = ipv4IpamPoolIdValue;
    }
    final ipv4NetmaskLengthValue = ipv4NetmaskLength;
    if (ipv4NetmaskLengthValue != null) {
      map['ipv4NetmaskLength'] = ipv4NetmaskLengthValue;
    }
    final ipv6CidrBlockValue = ipv6CidrBlock;
    if (ipv6CidrBlockValue != null) {
      map['ipv6CidrBlock'] = ipv6CidrBlockValue;
    }
    final ipv6IpamPoolIdValue = ipv6IpamPoolId;
    if (ipv6IpamPoolIdValue != null) {
      map['ipv6IpamPoolId'] = ipv6IpamPoolIdValue;
    }
    final ipv6NativeValue = ipv6Native;
    if (ipv6NativeValue != null) {
      map['ipv6Native'] = ipv6NativeValue;
    }
    final ipv6NetmaskLengthValue = ipv6NetmaskLength;
    if (ipv6NetmaskLengthValue != null) {
      map['ipv6NetmaskLength'] = ipv6NetmaskLengthValue;
    }
    final mapCustomerOwnedIpOnLaunchValue = mapCustomerOwnedIpOnLaunch;
    if (mapCustomerOwnedIpOnLaunchValue != null) {
      map['mapCustomerOwnedIpOnLaunch'] = mapCustomerOwnedIpOnLaunchValue;
    }
    final mapPublicIpOnLaunchValue = mapPublicIpOnLaunch;
    if (mapPublicIpOnLaunchValue != null) {
      map['mapPublicIpOnLaunch'] = mapPublicIpOnLaunchValue;
    }
    final outpostArnValue = outpostArn;
    if (outpostArnValue != null) {
      map['outpostArn'] = outpostArnValue;
    }
    final privateDnsHostnameTypeOnLaunchValue = privateDnsHostnameTypeOnLaunch;
    if (privateDnsHostnameTypeOnLaunchValue != null) {
      map['privateDnsHostnameTypeOnLaunch'] =
          privateDnsHostnameTypeOnLaunchValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory SubnetArgs.fromMap(Map<String, dynamic> map) {
    return SubnetArgs(
      assignIpv6AddressOnCreation: pulumi.Input.asOptionalInput<bool>(
          map['assignIpv6AddressOnCreation']),
      availabilityZone:
          pulumi.Input.asOptionalInput<String>(map['availabilityZone']),
      availabilityZoneId:
          pulumi.Input.asOptionalInput<String>(map['availabilityZoneId']),
      cidrBlock: pulumi.Input.asOptionalInput<String>(map['cidrBlock']),
      customerOwnedIpv4Pool:
          pulumi.Input.asOptionalInput<String>(map['customerOwnedIpv4Pool']),
      enableDns64: pulumi.Input.asOptionalInput<bool>(map['enableDns64']),
      enableLniAtDeviceIndex:
          pulumi.Input.asOptionalInput<int>(map['enableLniAtDeviceIndex']),
      enableResourceNameDnsARecordOnLaunch: pulumi.Input.asOptionalInput<bool>(
          map['enableResourceNameDnsARecordOnLaunch']),
      enableResourceNameDnsAaaaRecordOnLaunch:
          pulumi.Input.asOptionalInput<bool>(
              map['enableResourceNameDnsAaaaRecordOnLaunch']),
      ipv4IpamPoolId:
          pulumi.Input.asOptionalInput<String>(map['ipv4IpamPoolId']),
      ipv4NetmaskLength:
          pulumi.Input.asOptionalInput<int>(map['ipv4NetmaskLength']),
      ipv6CidrBlock: pulumi.Input.asOptionalInput<String>(map['ipv6CidrBlock']),
      ipv6IpamPoolId:
          pulumi.Input.asOptionalInput<String>(map['ipv6IpamPoolId']),
      ipv6Native: pulumi.Input.asOptionalInput<bool>(map['ipv6Native']),
      ipv6NetmaskLength:
          pulumi.Input.asOptionalInput<int>(map['ipv6NetmaskLength']),
      mapCustomerOwnedIpOnLaunch:
          pulumi.Input.asOptionalInput<bool>(map['mapCustomerOwnedIpOnLaunch']),
      mapPublicIpOnLaunch:
          pulumi.Input.asOptionalInput<bool>(map['mapPublicIpOnLaunch']),
      outpostArn: pulumi.Input.asOptionalInput<String>(map['outpostArn']),
      privateDnsHostnameTypeOnLaunch: pulumi.Input.asOptionalInput<String>(
          map['privateDnsHostnameTypeOnLaunch']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: pulumi.Input.asInput<String>(map['vpcId']),
    );
  }
}

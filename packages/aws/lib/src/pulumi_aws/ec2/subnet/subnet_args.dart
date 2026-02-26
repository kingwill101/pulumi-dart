// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Subnet.
class SubnetArgs {
  /// Specify true to indicate
  /// that network interfaces created in the specified subnet should be
  /// assigned an IPv6 address. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>
  final Input<bool>? assignIpv6AddressOnCreation;

  /// AZ for the subnet.
  final Input<String>? availabilityZone;

  /// AZ ID of the subnet. This argument is not supported in all regions or partitions. If necessary, use <span pulumi-lang-nodejs="`availabilityZone`" pulumi-lang-dotnet="`AvailabilityZone`" pulumi-lang-go="`availabilityZone`" pulumi-lang-python="`availability_zone`" pulumi-lang-yaml="`availabilityZone`" pulumi-lang-java="`availabilityZone`">`availability_zone`</span> instead.
  final Input<String>? availabilityZoneId;

  /// The IPv4 CIDR block for the subnet.
  final Input<String>? cidrBlock;

  /// The customer owned IPv4 address pool. Typically used with the <span pulumi-lang-nodejs="`mapCustomerOwnedIpOnLaunch`" pulumi-lang-dotnet="`MapCustomerOwnedIpOnLaunch`" pulumi-lang-go="`mapCustomerOwnedIpOnLaunch`" pulumi-lang-python="`map_customer_owned_ip_on_launch`" pulumi-lang-yaml="`mapCustomerOwnedIpOnLaunch`" pulumi-lang-java="`mapCustomerOwnedIpOnLaunch`">`map_customer_owned_ip_on_launch`</span> argument. The <span pulumi-lang-nodejs="`outpostArn`" pulumi-lang-dotnet="`OutpostArn`" pulumi-lang-go="`outpostArn`" pulumi-lang-python="`outpost_arn`" pulumi-lang-yaml="`outpostArn`" pulumi-lang-java="`outpostArn`">`outpost_arn`</span> argument must be specified when configured.
  final Input<String>? customerOwnedIpv4Pool;

  /// Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? enableDns64;

  /// Indicates the device position for local network interfaces in this subnet. For example, 1 indicates local network interfaces in this subnet are the secondary network interface (eth1). A local network interface cannot be the primary network interface (eth0).
  final Input<int>? enableLniAtDeviceIndex;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS A records. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? enableResourceNameDnsARecordOnLaunch;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? enableResourceNameDnsAaaaRecordOnLaunch;

  /// ID of an IPv4 VPC Resource Planning IPAM Pool. The CIDR of this pool is used to allocate the CIDR for the subnet.
  final Input<String>? ipv4IpamPoolId;

  /// Netmask. Requires specifying a <span pulumi-lang-nodejs="`ipv4IpamPoolId`" pulumi-lang-dotnet="`Ipv4IpamPoolId`" pulumi-lang-go="`ipv4IpamPoolId`" pulumi-lang-python="`ipv4_ipam_pool_id`" pulumi-lang-yaml="`ipv4IpamPoolId`" pulumi-lang-java="`ipv4IpamPoolId`">`ipv4_ipam_pool_id`</span>.
  final Input<int>? ipv4NetmaskLength;

  /// The IPv6 network range for the subnet,
  /// in CIDR notation. The subnet size must use a /64 prefix length. If the existing IPv6 subnet was created with <span pulumi-lang-nodejs="`assignIpv6AddressOnCreation " pulumi-lang-dotnet="`AssignIpv6AddressOnCreation " pulumi-lang-go="`assignIpv6AddressOnCreation " pulumi-lang-python="`assign_ipv6_address_on_creation " pulumi-lang-yaml="`assignIpv6AddressOnCreation " pulumi-lang-java="`assignIpv6AddressOnCreation ">`assign_ipv6_address_on_creation </span>= true`, changing this value will force resource recreation.
  final Input<String>? ipv6CidrBlock;

  /// ID of an IPv6 VPC Resource Planning IPAM Pool. The CIDR of this pool is used to allocate the CIDR for the subnet.
  final Input<String>? ipv6IpamPoolId;

  /// Indicates whether to create an IPv6-only subnet. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? ipv6Native;

  /// Netmask. Requires specifying a <span pulumi-lang-nodejs="`ipv6IpamPoolId`" pulumi-lang-dotnet="`Ipv6IpamPoolId`" pulumi-lang-go="`ipv6IpamPoolId`" pulumi-lang-python="`ipv6_ipam_pool_id`" pulumi-lang-yaml="`ipv6IpamPoolId`" pulumi-lang-java="`ipv6IpamPoolId`">`ipv6_ipam_pool_id`</span>. Valid values are from 44 to 64 in increments of 4.
  final Input<int>? ipv6NetmaskLength;

  /// Specify <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to indicate that network interfaces created in the subnet should be assigned a customer owned IP address. The <span pulumi-lang-nodejs="`customerOwnedIpv4Pool`" pulumi-lang-dotnet="`CustomerOwnedIpv4Pool`" pulumi-lang-go="`customerOwnedIpv4Pool`" pulumi-lang-python="`customer_owned_ipv4_pool`" pulumi-lang-yaml="`customerOwnedIpv4Pool`" pulumi-lang-java="`customerOwnedIpv4Pool`">`customer_owned_ipv4_pool`</span> and <span pulumi-lang-nodejs="`outpostArn`" pulumi-lang-dotnet="`OutpostArn`" pulumi-lang-go="`outpostArn`" pulumi-lang-python="`outpost_arn`" pulumi-lang-yaml="`outpostArn`" pulumi-lang-java="`outpostArn`">`outpost_arn`</span> arguments must be specified when set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? mapCustomerOwnedIpOnLaunch;

  /// Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? mapPublicIpOnLaunch;

  /// The Amazon Resource Name (ARN) of the Outpost.
  final Input<String>? outpostArn;

  /// The type of hostnames to assign to instances in the subnet at launch. For IPv6-only subnets, an instance DNS name must be based on the instance ID. For dual-stack and IPv4-only subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: `ip-name`, `resource-name`.
  final Input<String>? privateDnsHostnameTypeOnLaunch;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The VPC ID.
  final Input<String> vpcId;

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
      assignIpv6AddressOnCreation:
          Input.asOptionalInput<bool>(map['assignIpv6AddressOnCreation']),
      availabilityZone: Input.asOptionalInput<String>(map['availabilityZone']),
      availabilityZoneId:
          Input.asOptionalInput<String>(map['availabilityZoneId']),
      cidrBlock: Input.asOptionalInput<String>(map['cidrBlock']),
      customerOwnedIpv4Pool:
          Input.asOptionalInput<String>(map['customerOwnedIpv4Pool']),
      enableDns64: Input.asOptionalInput<bool>(map['enableDns64']),
      enableLniAtDeviceIndex:
          Input.asOptionalInput<int>(map['enableLniAtDeviceIndex']),
      enableResourceNameDnsARecordOnLaunch: Input.asOptionalInput<bool>(
          map['enableResourceNameDnsARecordOnLaunch']),
      enableResourceNameDnsAaaaRecordOnLaunch: Input.asOptionalInput<bool>(
          map['enableResourceNameDnsAaaaRecordOnLaunch']),
      ipv4IpamPoolId: Input.asOptionalInput<String>(map['ipv4IpamPoolId']),
      ipv4NetmaskLength: Input.asOptionalInput<int>(map['ipv4NetmaskLength']),
      ipv6CidrBlock: Input.asOptionalInput<String>(map['ipv6CidrBlock']),
      ipv6IpamPoolId: Input.asOptionalInput<String>(map['ipv6IpamPoolId']),
      ipv6Native: Input.asOptionalInput<bool>(map['ipv6Native']),
      ipv6NetmaskLength: Input.asOptionalInput<int>(map['ipv6NetmaskLength']),
      mapCustomerOwnedIpOnLaunch:
          Input.asOptionalInput<bool>(map['mapCustomerOwnedIpOnLaunch']),
      mapPublicIpOnLaunch:
          Input.asOptionalInput<bool>(map['mapPublicIpOnLaunch']),
      outpostArn: Input.asOptionalInput<String>(map['outpostArn']),
      privateDnsHostnameTypeOnLaunch:
          Input.asOptionalInput<String>(map['privateDnsHostnameTypeOnLaunch']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: Input.asInput<String>(map['vpcId']),
    );
  }
}

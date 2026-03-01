// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Subnet resources.
class SubnetState {
  /// The ARN of the subnet.
  final pulumi.Input<String>? arn;
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
  /// The association ID for the IPv6 CIDR block.
  final pulumi.Input<String>? ipv6CidrBlockAssociationId;
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
  /// The ID of the AWS account that owns the subnet.
  final pulumi.Input<String>? ownerId;
  /// The type of hostnames to assign to instances in the subnet at launch. For IPv6-only subnets, an instance DNS name must be based on the instance ID. For dual-stack and IPv4-only subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: `ip-name`, `resource-name`.
  final pulumi.Input<String>? privateDnsHostnameTypeOnLaunch;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The VPC ID.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [SubnetState].
  /// [arn] The ARN of the subnet.
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
  /// [ipv6CidrBlockAssociationId] The association ID for the IPv6 CIDR block.
  /// [ipv6IpamPoolId] ID of an IPv6 VPC Resource Planning IPAM Pool. The CIDR of this pool is used to allocate the CIDR for the subnet.
  /// [ipv6Native] Indicates whether to create an IPv6-only subnet. Default: `false`.
  /// [ipv6NetmaskLength] Netmask. Requires specifying a `ipv6_ipam_pool_id`. Valid values are from 44 to 64 in increments of 4.
  /// [mapCustomerOwnedIpOnLaunch] Specify `true` to indicate that network interfaces created in the subnet should be assigned a customer owned IP address. The `customer_owned_ipv4_pool` and `outpost_arn` arguments must be specified when set to `true`. Default is `false`.
  /// [mapPublicIpOnLaunch] Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is `false`.
  /// [outpostArn] The Amazon Resource Name (ARN) of the Outpost.
  /// [ownerId] The ID of the AWS account that owns the subnet.
  /// [privateDnsHostnameTypeOnLaunch] The type of hostnames to assign to instances in the subnet at launch. For IPv6-only subnets, an instance DNS name must be based on the instance ID. For dual-stack and IPv4-only subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: `ip-name`, `resource-name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] The VPC ID.
  SubnetState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? assignIpv6AddressOnCreation,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? availabilityZoneId,
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<String>? customerOwnedIpv4Pool,
    pulumi.Output<bool>? enableDns64,
    pulumi.Output<int>? enableLniAtDeviceIndex,
    pulumi.Output<bool>? enableResourceNameDnsARecordOnLaunch,
    pulumi.Output<bool>? enableResourceNameDnsAaaaRecordOnLaunch,
    pulumi.Output<String>? ipv4IpamPoolId,
    pulumi.Output<int>? ipv4NetmaskLength,
    pulumi.Output<String>? ipv6CidrBlock,
    pulumi.Output<String>? ipv6CidrBlockAssociationId,
    pulumi.Output<String>? ipv6IpamPoolId,
    pulumi.Output<bool>? ipv6Native,
    pulumi.Output<int>? ipv6NetmaskLength,
    pulumi.Output<bool>? mapCustomerOwnedIpOnLaunch,
    pulumi.Output<bool>? mapPublicIpOnLaunch,
    pulumi.Output<String>? outpostArn,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? privateDnsHostnameTypeOnLaunch,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      assignIpv6AddressOnCreation = pulumi.Input.asOptionalInput<bool>(assignIpv6AddressOnCreation),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      availabilityZoneId = pulumi.Input.asOptionalInput<String>(availabilityZoneId),
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      customerOwnedIpv4Pool = pulumi.Input.asOptionalInput<String>(customerOwnedIpv4Pool),
      enableDns64 = pulumi.Input.asOptionalInput<bool>(enableDns64),
      enableLniAtDeviceIndex = pulumi.Input.asOptionalInput<int>(enableLniAtDeviceIndex),
      enableResourceNameDnsARecordOnLaunch = pulumi.Input.asOptionalInput<bool>(enableResourceNameDnsARecordOnLaunch),
      enableResourceNameDnsAaaaRecordOnLaunch = pulumi.Input.asOptionalInput<bool>(enableResourceNameDnsAaaaRecordOnLaunch),
      ipv4IpamPoolId = pulumi.Input.asOptionalInput<String>(ipv4IpamPoolId),
      ipv4NetmaskLength = pulumi.Input.asOptionalInput<int>(ipv4NetmaskLength),
      ipv6CidrBlock = pulumi.Input.asOptionalInput<String>(ipv6CidrBlock),
      ipv6CidrBlockAssociationId = pulumi.Input.asOptionalInput<String>(ipv6CidrBlockAssociationId),
      ipv6IpamPoolId = pulumi.Input.asOptionalInput<String>(ipv6IpamPoolId),
      ipv6Native = pulumi.Input.asOptionalInput<bool>(ipv6Native),
      ipv6NetmaskLength = pulumi.Input.asOptionalInput<int>(ipv6NetmaskLength),
      mapCustomerOwnedIpOnLaunch = pulumi.Input.asOptionalInput<bool>(mapCustomerOwnedIpOnLaunch),
      mapPublicIpOnLaunch = pulumi.Input.asOptionalInput<bool>(mapPublicIpOnLaunch),
      outpostArn = pulumi.Input.asOptionalInput<String>(outpostArn),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      privateDnsHostnameTypeOnLaunch = pulumi.Input.asOptionalInput<String>(privateDnsHostnameTypeOnLaunch),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
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
      'ipv6CidrBlockAssociationId': ?ipv6CidrBlockAssociationId,
      'ipv6IpamPoolId': ?ipv6IpamPoolId,
      'ipv6Native': ?ipv6Native,
      'ipv6NetmaskLength': ?ipv6NetmaskLength,
      'mapCustomerOwnedIpOnLaunch': ?mapCustomerOwnedIpOnLaunch,
      'mapPublicIpOnLaunch': ?mapPublicIpOnLaunch,
      'outpostArn': ?outpostArn,
      'ownerId': ?ownerId,
      'privateDnsHostnameTypeOnLaunch': ?privateDnsHostnameTypeOnLaunch,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory SubnetState.fromMap(Map<String, dynamic> map) {
    return SubnetState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      assignIpv6AddressOnCreation: map['assignIpv6AddressOnCreation'] == null ? null : pulumi.Output.create<bool>(map['assignIpv6AddressOnCreation'] as bool),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      availabilityZoneId: map['availabilityZoneId'] == null ? null : pulumi.Output.create<String>(map['availabilityZoneId'] as String),
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      customerOwnedIpv4Pool: map['customerOwnedIpv4Pool'] == null ? null : pulumi.Output.create<String>(map['customerOwnedIpv4Pool'] as String),
      enableDns64: map['enableDns64'] == null ? null : pulumi.Output.create<bool>(map['enableDns64'] as bool),
      enableLniAtDeviceIndex: map['enableLniAtDeviceIndex'] == null ? null : pulumi.Output.create<int>(map['enableLniAtDeviceIndex'] as int),
      enableResourceNameDnsARecordOnLaunch: map['enableResourceNameDnsARecordOnLaunch'] == null ? null : pulumi.Output.create<bool>(map['enableResourceNameDnsARecordOnLaunch'] as bool),
      enableResourceNameDnsAaaaRecordOnLaunch: map['enableResourceNameDnsAaaaRecordOnLaunch'] == null ? null : pulumi.Output.create<bool>(map['enableResourceNameDnsAaaaRecordOnLaunch'] as bool),
      ipv4IpamPoolId: map['ipv4IpamPoolId'] == null ? null : pulumi.Output.create<String>(map['ipv4IpamPoolId'] as String),
      ipv4NetmaskLength: map['ipv4NetmaskLength'] == null ? null : pulumi.Output.create<int>(map['ipv4NetmaskLength'] as int),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : pulumi.Output.create<String>(map['ipv6CidrBlock'] as String),
      ipv6CidrBlockAssociationId: map['ipv6CidrBlockAssociationId'] == null ? null : pulumi.Output.create<String>(map['ipv6CidrBlockAssociationId'] as String),
      ipv6IpamPoolId: map['ipv6IpamPoolId'] == null ? null : pulumi.Output.create<String>(map['ipv6IpamPoolId'] as String),
      ipv6Native: map['ipv6Native'] == null ? null : pulumi.Output.create<bool>(map['ipv6Native'] as bool),
      ipv6NetmaskLength: map['ipv6NetmaskLength'] == null ? null : pulumi.Output.create<int>(map['ipv6NetmaskLength'] as int),
      mapCustomerOwnedIpOnLaunch: map['mapCustomerOwnedIpOnLaunch'] == null ? null : pulumi.Output.create<bool>(map['mapCustomerOwnedIpOnLaunch'] as bool),
      mapPublicIpOnLaunch: map['mapPublicIpOnLaunch'] == null ? null : pulumi.Output.create<bool>(map['mapPublicIpOnLaunch'] as bool),
      outpostArn: map['outpostArn'] == null ? null : pulumi.Output.create<String>(map['outpostArn'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      privateDnsHostnameTypeOnLaunch: map['privateDnsHostnameTypeOnLaunch'] == null ? null : pulumi.Output.create<String>(map['privateDnsHostnameTypeOnLaunch'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}


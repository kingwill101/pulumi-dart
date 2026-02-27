import 'package:pulumi/pulumi.dart';
import 'subnet_args.dart';

/// Provides an VPC subnet resource.
///
/// > **NOTE:** Due to [AWS Lambda improved VPC networking changes that began deploying in September 2019](https://aws.amazon.com/blogs/compute/announcing-improved-vpc-networking-for-aws-lambda-functions/), subnets associated with Lambda Functions can take up to 45 minutes to successfully delete. To allow for successful deletion, the provider will wait for at least 45 minutes even if a shorter delete timeout is specified.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Subnets In Secondary VPC CIDR Blocks
///
/// When managing subnets in one of a VPC's secondary CIDR blocks created using a `aws.ec2.VpcIpv4CidrBlockAssociation`
/// resource, it is recommended to reference that resource's `vpc_id` attribute to ensure correct dependency ordering.
///
///
///
/// ### IPAM-Managed Subnets
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) ID of the subnet.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import subnets using the subnet `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/subnet:Subnet example subnet-9d4a7b6c
/// ```
class Subnet extends CustomResource {
  /// The ARN of the subnet.
  late final Output<String> arn;

  /// Specify true to indicate
  /// that network interfaces created in the specified subnet should be
  /// assigned an IPv6 address. Default is `false`
  late final Output<bool?> assignIpv6AddressOnCreation;

  /// AZ for the subnet.
  late final Output<String> availabilityZone;

  /// AZ ID of the subnet. This argument is not supported in all regions or partitions. If necessary, use `availability_zone` instead.
  late final Output<String> availabilityZoneId;

  /// The IPv4 CIDR block for the subnet.
  late final Output<String> cidrBlock;

  /// The customer owned IPv4 address pool. Typically used with the `map_customer_owned_ip_on_launch` argument. The `outpost_arn` argument must be specified when configured.
  late final Output<String?> customerOwnedIpv4Pool;

  /// Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations. Default: `false`.
  late final Output<bool?> enableDns64;

  /// Indicates the device position for local network interfaces in this subnet. For example, 1 indicates local network interfaces in this subnet are the secondary network interface (eth1). A local network interface cannot be the primary network interface (eth0).
  late final Output<int?> enableLniAtDeviceIndex;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS A records. Default: `false`.
  late final Output<bool?> enableResourceNameDnsARecordOnLaunch;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records. Default: `false`.
  late final Output<bool?> enableResourceNameDnsAaaaRecordOnLaunch;

  /// ID of an IPv4 VPC Resource Planning IPAM Pool. The CIDR of this pool is used to allocate the CIDR for the subnet.
  late final Output<String?> ipv4IpamPoolId;

  /// Netmask. Requires specifying a `ipv4_ipam_pool_id`.
  late final Output<int?> ipv4NetmaskLength;

  /// The IPv6 network range for the subnet,
  /// in CIDR notation. The subnet size must use a /64 prefix length. If the existing IPv6 subnet was created with `assign_ipv6_address_on_creation = true`, changing this value will force resource recreation.
  late final Output<String> ipv6CidrBlock;

  /// The association ID for the IPv6 CIDR block.
  late final Output<String> ipv6CidrBlockAssociationId;

  /// ID of an IPv6 VPC Resource Planning IPAM Pool. The CIDR of this pool is used to allocate the CIDR for the subnet.
  late final Output<String?> ipv6IpamPoolId;

  /// Indicates whether to create an IPv6-only subnet. Default: `false`.
  late final Output<bool?> ipv6Native;

  /// Netmask. Requires specifying a `ipv6_ipam_pool_id`. Valid values are from 44 to 64 in increments of 4.
  late final Output<int?> ipv6NetmaskLength;

  /// Specify `true` to indicate that network interfaces created in the subnet should be assigned a customer owned IP address. The `customer_owned_ipv4_pool` and `outpost_arn` arguments must be specified when set to `true`. Default is `false`.
  late final Output<bool?> mapCustomerOwnedIpOnLaunch;

  /// Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is `false`.
  late final Output<bool?> mapPublicIpOnLaunch;

  /// The Amazon Resource Name (ARN) of the Outpost.
  late final Output<String?> outpostArn;

  /// The ID of the AWS account that owns the subnet.
  late final Output<String> ownerId;

  /// The type of hostnames to assign to instances in the subnet at launch. For IPv6-only subnets, an instance DNS name must be based on the instance ID. For dual-stack and IPv4-only subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: `ip-name`, `resource-name`.
  late final Output<String> privateDnsHostnameTypeOnLaunch;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VPC ID.
  late final Output<String> vpcId;

  Subnet(
    String name, {
    SubnetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/subnet:Subnet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assignIpv6AddressOnCreation =
        registerOutput<bool?>('assignIpv6AddressOnCreation');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.availabilityZoneId = registerOutput<String>('availabilityZoneId');
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.customerOwnedIpv4Pool =
        registerOutput<String?>('customerOwnedIpv4Pool');
    this.enableDns64 = registerOutput<bool?>('enableDns64');
    this.enableLniAtDeviceIndex =
        registerOutput<int?>('enableLniAtDeviceIndex');
    this.enableResourceNameDnsARecordOnLaunch =
        registerOutput<bool?>('enableResourceNameDnsARecordOnLaunch');
    this.enableResourceNameDnsAaaaRecordOnLaunch =
        registerOutput<bool?>('enableResourceNameDnsAaaaRecordOnLaunch');
    this.ipv4IpamPoolId = registerOutput<String?>('ipv4IpamPoolId');
    this.ipv4NetmaskLength = registerOutput<int?>('ipv4NetmaskLength');
    this.ipv6CidrBlock = registerOutput<String>('ipv6CidrBlock');
    this.ipv6CidrBlockAssociationId =
        registerOutput<String>('ipv6CidrBlockAssociationId');
    this.ipv6IpamPoolId = registerOutput<String?>('ipv6IpamPoolId');
    this.ipv6Native = registerOutput<bool?>('ipv6Native');
    this.ipv6NetmaskLength = registerOutput<int?>('ipv6NetmaskLength');
    this.mapCustomerOwnedIpOnLaunch =
        registerOutput<bool?>('mapCustomerOwnedIpOnLaunch');
    this.mapPublicIpOnLaunch = registerOutput<bool?>('mapPublicIpOnLaunch');
    this.outpostArn = registerOutput<String?>('outpostArn');
    this.ownerId = registerOutput<String>('ownerId');
    this.privateDnsHostnameTypeOnLaunch =
        registerOutput<String>('privateDnsHostnameTypeOnLaunch');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}

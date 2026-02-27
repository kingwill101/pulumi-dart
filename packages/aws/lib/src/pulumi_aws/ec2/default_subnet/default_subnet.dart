import 'package:pulumi/pulumi.dart';
import 'default_subnet_args.dart';

/// Provides a resource to manage a [default subnet](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/default-vpc.html#default-vpc-basics) in the current region.
///
/// **This is an advanced resource** and has special caveats to be aware of when using it. Please read this document in its entirety before using this resource.
///
/// The `aws.ec2.DefaultSubnet` resource behaves differently from normal resources in that if a default subnet exists in the specified Availability Zone, this provider does not _create_ this resource, but instead "adopts" it into management.
/// If no default subnet exists, this provider creates a new default subnet.
/// By default, `pulumi destroy` does not delete the default subnet but does remove the resource from the state.
/// Set the `force_destroy` argument to `true` to delete the default subnet.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import subnets using the subnet `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/defaultSubnet:DefaultSubnet public_subnet subnet-9d4a7b6c
/// ```
class DefaultSubnet extends CustomResource {
  late final Output<String> arn;
  late final Output<bool?> assignIpv6AddressOnCreation;

  /// is required
  /// * The `availability_zone_id`, `cidr_block` and `vpc_id` arguments become computed attributes
  /// * The default value for `map_public_ip_on_launch` is `true`
  ///
  /// This resource supports the following additional arguments:
  late final Output<String> availabilityZone;

  /// The AZ ID of the subnet
  late final Output<String> availabilityZoneId;

  /// The IPv4 CIDR block assigned to the subnet
  late final Output<String> cidrBlock;
  late final Output<String?> customerOwnedIpv4Pool;
  late final Output<bool?> enableDns64;
  late final Output<int> enableLniAtDeviceIndex;
  late final Output<bool?> enableResourceNameDnsARecordOnLaunch;
  late final Output<bool?> enableResourceNameDnsAaaaRecordOnLaunch;
  late final Output<bool> existingDefaultSubnet;

  /// Whether destroying the resource deletes the default subnet. Default: `false`
  late final Output<bool?> forceDestroy;
  late final Output<String> ipv6CidrBlock;
  late final Output<String> ipv6CidrBlockAssociationId;
  late final Output<bool?> ipv6Native;
  late final Output<bool?> mapCustomerOwnedIpOnLaunch;
  late final Output<bool?> mapPublicIpOnLaunch;
  late final Output<String> outpostArn;
  late final Output<String> ownerId;
  late final Output<String> privateDnsHostnameTypeOnLaunch;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  late final Output<String> region;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The ID of the VPC the subnet is in
  late final Output<String> vpcId;

  DefaultSubnet(
    String name, {
    DefaultSubnetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/defaultSubnet:DefaultSubnet',
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
    this.enableLniAtDeviceIndex = registerOutput<int>('enableLniAtDeviceIndex');
    this.enableResourceNameDnsARecordOnLaunch =
        registerOutput<bool?>('enableResourceNameDnsARecordOnLaunch');
    this.enableResourceNameDnsAaaaRecordOnLaunch =
        registerOutput<bool?>('enableResourceNameDnsAaaaRecordOnLaunch');
    this.existingDefaultSubnet = registerOutput<bool>('existingDefaultSubnet');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.ipv6CidrBlock = registerOutput<String>('ipv6CidrBlock');
    this.ipv6CidrBlockAssociationId =
        registerOutput<String>('ipv6CidrBlockAssociationId');
    this.ipv6Native = registerOutput<bool?>('ipv6Native');
    this.mapCustomerOwnedIpOnLaunch =
        registerOutput<bool?>('mapCustomerOwnedIpOnLaunch');
    this.mapPublicIpOnLaunch = registerOutput<bool?>('mapPublicIpOnLaunch');
    this.outpostArn = registerOutput<String>('outpostArn');
    this.ownerId = registerOutput<String>('ownerId');
    this.privateDnsHostnameTypeOnLaunch =
        registerOutput<String>('privateDnsHostnameTypeOnLaunch');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import '../secondary_subnet_ipv4_cidr_block_association/secondary_subnet_ipv4_cidr_block_association.dart';
import '../secondary_subnet_timeouts/secondary_subnet_timeouts.dart';
import 'secondary_subnet_args.dart';

/// Provides an EC2 Secondary Subnet resource.
///
/// A secondary subnet is a subnet within a secondary network that provides high-performance networking capabilities for specialized workloads such as RDMA (Remote Direct Memory Access) applications.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Using Availability Zone ID
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the secondary subnet.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import EC2 Secondary Subnets using the secondary subnet ID. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/secondarySubnet:SecondarySubnet example ss-0123456789abcdef0
/// ```
class SecondarySubnet extends pulumi.CustomResource {
  /// ARN of the secondary subnet.
  late final pulumi.Output<String> arn;

  /// Availability Zone for the secondary subnet. Cannot be specified with `availability_zone_id`.
  late final pulumi.Output<String> availabilityZone;

  /// ID of the Availability Zone for the secondary subnet. This option is preferred over `availability_zone` as it provides a consistent identifier across AWS accounts. Cannot be specified with `availability_zone`.
  late final pulumi.Output<String> availabilityZoneId;

  /// IPv4 CIDR block for the secondary subnet. The CIDR block size must be between `/12` and `/28`.
  late final pulumi.Output<String> ipv4CidrBlock;

  /// A list of IPv4 CIDR block associations for the secondary network.
  late final pulumi.Output<List<SecondarySubnetIpv4CidrBlockAssociation>>
      ipv4CidrBlockAssociations;

  /// ID of the AWS account that owns the secondary subnet.
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ID of the secondary network in which to create the secondary subnet.
  late final pulumi.Output<String> secondaryNetworkId;

  /// Type of the secondary network (e.g., `rdma`).
  late final pulumi.Output<String> secondaryNetworkType;

  /// ID of the secondary subnet.
  late final pulumi.Output<String> secondarySubnetId;

  /// State of the IPv4 CIDR block association.
  late final pulumi.Output<String> state;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<SecondarySubnetTimeouts?> timeouts;

  SecondarySubnet(
    String name, {
    SecondarySubnetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/secondarySubnet:SecondarySubnet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.availabilityZoneId = registerOutput<String>('availabilityZoneId');
    this.ipv4CidrBlock = registerOutput<String>('ipv4CidrBlock');
    this.ipv4CidrBlockAssociations =
        registerOutput<List<SecondarySubnetIpv4CidrBlockAssociation>>(
            'ipv4CidrBlockAssociations');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.secondaryNetworkId = registerOutput<String>('secondaryNetworkId');
    this.secondaryNetworkType = registerOutput<String>('secondaryNetworkType');
    this.secondarySubnetId = registerOutput<String>('secondarySubnetId');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<SecondarySubnetTimeouts?>('timeouts');
  }
}

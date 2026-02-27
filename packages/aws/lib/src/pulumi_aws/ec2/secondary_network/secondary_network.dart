import 'package:pulumi/pulumi.dart' as pulumi;
import '../secondary_network_ipv4_cidr_block_association/secondary_network_ipv4_cidr_block_association.dart';
import '../secondary_network_timeouts/secondary_network_timeouts.dart';
import 'secondary_network_args.dart';

/// Provides an EC2 Secondary Network resource for RDMA networking.
///
/// Secondary networks are specialized network resources that enable high-performance RDMA (Remote Direct Memory Access) networking for compute-intensive workloads.
/// They provide dedicated network infrastructure with low latency and high bandwidth capabilities.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the secondary network.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import EC2 Secondary Networks using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/secondaryNetwork:SecondaryNetwork example sn-0123456789abcdef0
/// ```
class SecondaryNetwork extends pulumi.CustomResource {
  /// ARN of the secondary network.
  late final pulumi.Output<String> arn;

  /// IPv4 CIDR block for the secondary network. The CIDR block size must be between `/12` and `/28`.
  late final pulumi.Output<String> ipv4CidrBlock;

  /// A list of IPv4 CIDR block associations for the secondary network.
  late final pulumi.Output<List<SecondaryNetworkIpv4CidrBlockAssociation>>
      ipv4CidrBlockAssociations;

  /// Type of secondary network. Currently only `rdma` is supported.
  late final pulumi.Output<String> networkType;
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ID of the secondary network.
  late final pulumi.Output<String> secondaryNetworkId;

  /// State of the IPv4 CIDR block association.
  late final pulumi.Output<String> state;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<SecondaryNetworkTimeouts?> timeouts;

  SecondaryNetwork(
    String name, {
    SecondaryNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/secondaryNetwork:SecondaryNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.ipv4CidrBlock = registerOutput<String>('ipv4CidrBlock');
    this.ipv4CidrBlockAssociations =
        registerOutput<List<SecondaryNetworkIpv4CidrBlockAssociation>>(
            'ipv4CidrBlockAssociations');
    this.networkType = registerOutput<String>('networkType');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.secondaryNetworkId = registerOutput<String>('secondaryNetworkId');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<SecondaryNetworkTimeouts?>('timeouts');
  }
}

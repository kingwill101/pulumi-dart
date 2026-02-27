import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpc_block_public_access_exclusion_timeouts/vpc_block_public_access_exclusion_timeouts.dart';
import 'vpc_block_public_access_exclusion_args.dart';

/// Resource for managing an AWS EC2 (Elastic Compute Cloud) VPC Block Public Access Exclusion.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Usage with subnet id
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EC2 (Elastic Compute Cloud) VPC Block Public Access Exclusion using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcBlockPublicAccessExclusion:VpcBlockPublicAccessExclusion example vpcbpa-exclude-1234abcd
/// ```
class VpcBlockPublicAccessExclusion extends pulumi.CustomResource {
  /// Mode of exclusion from Block Public Access. The allowed values are `allow-egress` and `allow-bidirectional`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> internetGatewayExclusionMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) the excluded resource.
  late final pulumi.Output<String> resourceArn;

  /// Id of the subnet to which this exclusion applies. Either this or the vpc_id needs to be provided.
  late final pulumi.Output<String?> subnetId;

  /// A map of tags to assign to the exclusion. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<VpcBlockPublicAccessExclusionTimeouts?> timeouts;

  /// Id of the VPC to which this exclusion applies. Either this or the subnet_id needs to be provided.
  late final pulumi.Output<String?> vpcId;

  VpcBlockPublicAccessExclusion(
    String name, {
    VpcBlockPublicAccessExclusionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcBlockPublicAccessExclusion:VpcBlockPublicAccessExclusion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.internetGatewayExclusionMode =
        registerOutput<String>('internetGatewayExclusionMode');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.subnetId = registerOutput<String?>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts =
        registerOutput<VpcBlockPublicAccessExclusionTimeouts?>('timeouts');
    this.vpcId = registerOutput<String?>('vpcId');
  }
}

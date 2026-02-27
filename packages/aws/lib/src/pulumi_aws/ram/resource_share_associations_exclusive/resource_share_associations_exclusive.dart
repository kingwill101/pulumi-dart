import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_share_associations_exclusive_args.dart';

/// Resource for maintaining exclusive management of principal and resource associations for an AWS RAM (Resource Access Manager) Resource Share.
///
/// !> This resource takes exclusive ownership over principal and resource associations for a resource share. This includes removal of principals and resources which are not explicitly configured.
///
/// > Destruction of this resource will disassociate all configured principals and resources from the resource share.
///
/// > **NOTE:** This resource cannot be used in conjunction with `aws.ram.PrincipalAssociation` or `aws.ram.ResourceAssociation` for the same resource share. Using them together will cause persistent drift and conflicts.
///
/// ## Example Usage
///
/// ### Basic Usage with Principals
///
///
///
/// ### With Organization Principal
///
///
///
/// ### With Service Principals
///
/// When sharing resources with AWS services, use service principals. Service principals follow the pattern `service-id.amazonaws.com` (e.g., `pca-connector-ad.amazonaws.com`, `elasticmapreduce.amazonaws.com`). The `sources` argument can be used to restrict which AWS accounts the service can access the shared resources from.
///
/// > **NOTE:** Service principals cannot be mixed with other principal types (AWS account IDs, organization ARNs, OU ARNs, IAM role ARNs, or IAM user ARNs) in the same resource.
///
///
///
/// ### Disallow All Associations
///
/// To automatically remove any configured associations, omit the `principals` and `resource_arns` arguments or set them to empty lists.
///
/// > This will not **prevent** associations from being created via Terraform (or any other interface). This resource enables bringing associations into a configured state, however, this reconciliation happens only when `apply` is proactively run.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import RAM Resource Share Association Exclusive using the `resource_share_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:ram/resourceShareAssociationsExclusive:ResourceShareAssociationsExclusive example arn:aws:ram:eu-west-1:123456789012:resource-share/73da1ab9-b94a-4ba3-8eb4-45917f7f4b12
/// ```
class ResourceShareAssociationsExclusive extends pulumi.CustomResource {
  /// A set of principals to associate with the resource share. Principals not configured in this argument will be removed. Valid values include:
  /// * AWS account ID (exactly 12 digits, e.g., `123456789012`)
  /// * AWS Organizations Organization ARN (e.g., `arn:aws:organizations::123456789012:organization/o-exampleorgid`)
  /// * AWS Organizations Organizational Unit ARN (e.g., `arn:aws:organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid`)
  /// * IAM role ARN (e.g., `arn:aws:iam::123456789012:role/example-role`)
  /// * IAM user ARN (e.g., `arn:aws:iam::123456789012:user/example-user`)
  /// * Service principal (e.g., `ec2.amazonaws.com`)
  late final pulumi.Output<List<String>?> principals;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A set of Amazon Resource Names (ARNs) of resources to associate with the resource share. Resources not configured in this argument will be removed.
  late final pulumi.Output<List<String>?> resourceArns;

  /// The Amazon Resource Name (ARN) of the resource share. Changing this value forces creation of a new resource.
  late final pulumi.Output<String> resourceShareArn;

  /// A set of AWS account IDs that restrict which accounts a service principal can access resources from. This argument can only be specified when `principals` contains only service principals. When specified, it limits the source accounts from which the service can access the shared resources.
  late final pulumi.Output<List<String>?> sources;

  ResourceShareAssociationsExclusive(
    String name, {
    ResourceShareAssociationsExclusiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ram/resourceShareAssociationsExclusive:ResourceShareAssociationsExclusive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.principals = registerOutput<List<String>?>('principals');
    this.region = registerOutput<String>('region');
    this.resourceArns = registerOutput<List<String>?>('resourceArns');
    this.resourceShareArn = registerOutput<String>('resourceShareArn');
    this.sources = registerOutput<List<String>?>('sources');
  }
}

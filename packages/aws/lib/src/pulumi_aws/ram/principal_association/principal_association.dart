import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal_association_args.dart';

/// Provides a Resource Access Manager (RAM) principal association. Depending if [RAM Sharing with AWS Organizations is enabled](https://docs.aws.amazon.com/ram/latest/userguide/getting-started-sharing.html#getting-started-sharing-orgs), the RAM behavior with different principal types changes.
///
/// When RAM Sharing with AWS Organizations is enabled:
///
/// - For AWS Account ID, Organization, and Organizational Unit principals within the same AWS Organization, no resource share invitation is sent and resources become available automatically after creating the association.
/// - For AWS Account ID principals outside the AWS Organization, a resource share invitation is sent and must be accepted before resources become available. See the `aws.ram.ResourceShareAccepter` resource to accept these invitations.
///
/// When RAM Sharing with AWS Organizations is not enabled:
///
/// - Organization and Organizational Unit principals cannot be used.
/// - For AWS Account ID principals, a resource share invitation is sent and must be accepted before resources become available. See the `aws.ram.ResourceShareAccepter` resource to accept these invitations.
///
/// ## Example Usage
///
/// ### AWS Account ID
///
///
///
/// ### AWS Organization
///
///
///
/// ## Import
///
/// Using `pulumi import`, import RAM Principal Associations using their Resource Share ARN and the `principal` separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:ram/principalAssociation:PrincipalAssociation example arn:aws:ram:eu-west-1:123456789012:resource-share/73da1ab9-b94a-4ba3-8eb4-45917f7f4b12,123456789012
/// ```
class PrincipalAssociation extends pulumi.CustomResource {
  /// The principal to associate with the resource share. Possible values are an AWS account ID, an AWS Organizations Organization ARN, or an AWS Organizations Organization Unit ARN.
  late final pulumi.Output<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the resource share.
  late final pulumi.Output<String> resourceShareArn;

  PrincipalAssociation(
    String name, {
    PrincipalAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ram/principalAssociation:PrincipalAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.principal = registerOutput<String>('principal');
    this.region = registerOutput<String>('region');
    this.resourceShareArn = registerOutput<String>('resourceShareArn');
  }
}

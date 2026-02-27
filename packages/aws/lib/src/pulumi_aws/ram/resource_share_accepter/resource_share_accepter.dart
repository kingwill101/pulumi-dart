import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_share_accepter_args.dart';

/// Manage accepting a Resource Access Manager (RAM) Resource Share invitation. From a _receiver_ AWS account, accept an invitation to share resources that were shared by a _sender_ AWS account. To create a resource share in the _sender_, see the `aws.ram.ResourceShare` resource.
///
/// > **Note:** If both AWS accounts are in the same Organization and [RAM Sharing with AWS Organizations is enabled](https://docs.aws.amazon.com/ram/latest/userguide/getting-started-sharing.html#getting-started-sharing-orgs), this resource is not necessary as RAM Resource Share invitations are not used.
///
/// ## Example Usage
///
/// This configuration provides an example of using multiple AWS providers to configure two different AWS accounts. In the _sender_ account, the configuration creates a `aws.ram.ResourceShare` and uses a data source in the _receiver_ account to create a `aws.ram.PrincipalAssociation` resource with the _receiver's_ account ID. In the _receiver_ account, the configuration accepts the invitation to share resources with the `aws.ram.ResourceShareAccepter`.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import resource share accepters using the resource share ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ram/resourceShareAccepter:ResourceShareAccepter example arn:aws:ram:us-east-1:123456789012:resource-share/c4b56393-e8d9-89d9-6dc9-883752de4767
/// ```
class ResourceShareAccepter extends pulumi.CustomResource {
  /// The ARN of the resource share invitation.
  late final pulumi.Output<String> invitationArn;

  /// The account ID of the receiver account which accepts the invitation.
  late final pulumi.Output<String> receiverAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A list of the resource ARNs shared via the resource share.
  late final pulumi.Output<List<String>> resources;

  /// The account ID of the sender account which submits the invitation.
  late final pulumi.Output<String> senderAccountId;

  /// The ARN of the resource share.
  late final pulumi.Output<String> shareArn;

  /// The ID of the resource share as displayed in the console.
  late final pulumi.Output<String> shareId;

  /// The name of the resource share.
  late final pulumi.Output<String> shareName;

  /// The status of the resource share (ACTIVE, PENDING, FAILED, DELETING, DELETED).
  late final pulumi.Output<String> status;

  ResourceShareAccepter(
    String name, {
    ResourceShareAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ram/resourceShareAccepter:ResourceShareAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.invitationArn = registerOutput<String>('invitationArn');
    this.receiverAccountId = registerOutput<String>('receiverAccountId');
    this.region = registerOutput<String>('region');
    this.resources = registerOutput<List<String>>('resources');
    this.senderAccountId = registerOutput<String>('senderAccountId');
    this.shareArn = registerOutput<String>('shareArn');
    this.shareId = registerOutput<String>('shareId');
    this.shareName = registerOutput<String>('shareName');
    this.status = registerOutput<String>('status');
  }
}

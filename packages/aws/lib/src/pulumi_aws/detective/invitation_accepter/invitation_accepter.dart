import 'package:pulumi/pulumi.dart' as pulumi;
import 'invitation_accepter_args.dart';

/// Provides a resource to manage an [Amazon Detective Invitation Accepter](https://docs.aws.amazon.com/detective/latest/APIReference/API_AcceptInvitation.html). Ensure that the accepter is configured to use the AWS account you wish to _accept_ the invitation from the primary graph owner account.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.detective.InvitationAccepter` using the graph ARN. For example:
///
/// ```sh
/// $ pulumi import aws:detective/invitationAccepter:InvitationAccepter example arn:aws:detective:us-east-1:123456789101:graph:231684d34gh74g4bae1dbc7bd807d02d
/// ```
class InvitationAccepter extends pulumi.CustomResource {
  /// ARN of the behavior graph that the member account is accepting the invitation for.
  late final pulumi.Output<String> graphArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  InvitationAccepter(
    String name, {
    InvitationAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:detective/invitationAccepter:InvitationAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.graphArn = registerOutput<String>('graphArn');
    this.region = registerOutput<String>('region');
  }
}

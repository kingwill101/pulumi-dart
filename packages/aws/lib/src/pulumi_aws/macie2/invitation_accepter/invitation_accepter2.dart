import 'package:pulumi/pulumi.dart';
import 'invitation_accepter_args2.dart';

/// Provides a resource to manage an [Amazon Macie Invitation Accepter](https://docs.aws.amazon.com/macie/latest/APIReference/invitations-accept.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.macie2.InvitationAccepter` using the admin account ID. For example:
///
/// ```sh
/// $ pulumi import aws:macie2/invitationAccepter:InvitationAccepter example 123456789012
/// ```
class InvitationAccepter2 extends CustomResource {
  /// The AWS account ID for the account that sent the invitation.
  late final Output<String> administratorAccountId;

  /// The unique identifier for the invitation.
  late final Output<String> invitationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  InvitationAccepter2(
    String name, {
    InvitationAccepterArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:macie2/invitationAccepter:InvitationAccepter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.administratorAccountId =
        registerOutput<String>('administratorAccountId');
    this.invitationId = registerOutput<String>('invitationId');
    this.region = registerOutput<String>('region');
  }
}

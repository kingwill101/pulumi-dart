import 'package:pulumi/pulumi.dart' as pulumi;
import 'invitation_accepter_macie2_args.dart';

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
class InvitationAccepterMacie2 extends pulumi.CustomResource {
  /// The AWS account ID for the account that sent the invitation.
  late final pulumi.Output<String> administratorAccountId;

  /// The unique identifier for the invitation.
  late final pulumi.Output<String> invitationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  InvitationAccepterMacie2(
    String name, {
    InvitationAccepterMacie2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:macie2/invitationAccepter:InvitationAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.administratorAccountId =
        registerOutput<String>('administratorAccountId');
    this.invitationId = registerOutput<String>('invitationId');
    this.region = registerOutput<String>('region');
  }
}

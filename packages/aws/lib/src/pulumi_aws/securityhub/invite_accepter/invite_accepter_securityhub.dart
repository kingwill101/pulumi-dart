import 'package:pulumi/pulumi.dart' as pulumi;
import 'invite_accepter_securityhub_args.dart';

/// > **Note:** AWS accounts can only be associated with a single Security Hub master account. Destroying this resource will disassociate the member account from the master account.
///
/// Accepts a Security Hub invitation.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Security Hub invite acceptance using the account ID. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/inviteAccepter:InviteAccepter example 123456789012
/// ```
class InviteAccepterSecurityhub extends pulumi.CustomResource {
  /// The ID of the invitation.
  late final pulumi.Output<String> invitationId;

  /// The account ID of the master Security Hub account whose invitation you're accepting.
  late final pulumi.Output<String> masterId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  InviteAccepterSecurityhub(
    String name, {
    InviteAccepterSecurityhubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/inviteAccepter:InviteAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.invitationId = registerOutput<String>('invitationId');
    this.masterId = registerOutput<String>('masterId');
    this.region = registerOutput<String>('region');
  }
}

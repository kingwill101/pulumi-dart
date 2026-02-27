import 'package:pulumi/pulumi.dart';
import 'invite_accepter_args2.dart';

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
class InviteAccepter2 extends CustomResource {
  /// The ID of the invitation.
  late final Output<String> invitationId;

  /// The account ID of the master Security Hub account whose invitation you're accepting.
  late final Output<String> masterId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  InviteAccepter2(
    String name, {
    InviteAccepterArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/inviteAccepter:InviteAccepter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.invitationId = registerOutput<String>('invitationId');
    this.masterId = registerOutput<String>('masterId');
    this.region = registerOutput<String>('region');
  }
}

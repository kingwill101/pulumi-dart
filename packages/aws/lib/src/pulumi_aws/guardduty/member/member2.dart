import 'package:pulumi/pulumi.dart';
import 'member_args2.dart';

/// Provides a resource to manage a GuardDuty member. To accept invitations in member accounts, see the `aws.guardduty.InviteAccepter` resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import GuardDuty members using the primary GuardDuty detector ID and member AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:guardduty/member:Member MyMember 00b00fd5aecc0ab60a708659477e9617:123456789012
/// ```
class Member2 extends CustomResource {
  /// AWS account ID for member account.
  late final Output<String> accountId;

  /// The detector ID of the GuardDuty account where you want to create member accounts.
  late final Output<String> detectorId;

  /// Boolean whether an email notification is sent to the accounts. Defaults to `false`.
  late final Output<bool?> disableEmailNotification;

  /// Email address for member account.
  late final Output<String> email;

  /// Message for invitation.
  late final Output<String?> invitationMessage;

  /// Boolean whether to invite the account to GuardDuty as a member. Defaults to `false`. To detect if an invitation needs to be (re-)sent, the this provider state value is `true` based on a `relationship_status` of `Disabled`, `Enabled`, `Invited`, or `EmailVerificationInProgress`.
  late final Output<bool?> invite;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The status of the relationship between the member account and its primary account. More information can be found in [Amazon GuardDuty API Reference](https://docs.aws.amazon.com/guardduty/latest/ug/get-members.html).
  late final Output<String> relationshipStatus;

  Member2(
    String name, {
    MemberArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/member:Member',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.detectorId = registerOutput<String>('detectorId');
    this.disableEmailNotification =
        registerOutput<bool?>('disableEmailNotification');
    this.email = registerOutput<String>('email');
    this.invitationMessage = registerOutput<String?>('invitationMessage');
    this.invite = registerOutput<bool?>('invite');
    this.region = registerOutput<String>('region');
    this.relationshipStatus = registerOutput<String>('relationshipStatus');
  }
}

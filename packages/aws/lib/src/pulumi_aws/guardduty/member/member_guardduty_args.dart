// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Member.
class MemberGuarddutyArgs {
  /// AWS account ID for member account.
  final pulumi.Input<String> accountId;

  /// The detector ID of the GuardDuty account where you want to create member accounts.
  final pulumi.Input<String> detectorId;

  /// Boolean whether an email notification is sent to the accounts. Defaults to `false`.
  final pulumi.Input<bool>? disableEmailNotification;

  /// Email address for member account.
  final pulumi.Input<String> email;

  /// Message for invitation.
  final pulumi.Input<String>? invitationMessage;

  /// Boolean whether to invite the account to GuardDuty as a member. Defaults to `false`. To detect if an invitation needs to be (re-)sent, the this provider state value is `true` based on a `relationship_status` of `Disabled`, `Enabled`, `Invited`, or `EmailVerificationInProgress`.
  final pulumi.Input<bool>? invite;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  MemberGuarddutyArgs({
    required this.accountId,
    required this.detectorId,
    this.disableEmailNotification,
    required this.email,
    this.invitationMessage,
    this.invite,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['detectorId'] = detectorId;
    final disableEmailNotificationValue = disableEmailNotification;
    if (disableEmailNotificationValue != null) {
      map['disableEmailNotification'] = disableEmailNotificationValue;
    }
    map['email'] = email;
    final invitationMessageValue = invitationMessage;
    if (invitationMessageValue != null) {
      map['invitationMessage'] = invitationMessageValue;
    }
    final inviteValue = invite;
    if (inviteValue != null) {
      map['invite'] = inviteValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory MemberGuarddutyArgs.fromMap(Map<String, dynamic> map) {
    return MemberGuarddutyArgs(
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      detectorId: pulumi.Input.asInput<String>(map['detectorId']),
      disableEmailNotification:
          pulumi.Input.asOptionalInput<bool>(map['disableEmailNotification']),
      email: pulumi.Input.asInput<String>(map['email']),
      invitationMessage:
          pulumi.Input.asOptionalInput<String>(map['invitationMessage']),
      invite: pulumi.Input.asOptionalInput<bool>(map['invite']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}

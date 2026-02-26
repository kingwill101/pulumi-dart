// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Member.
class MemberArgs2 {
  /// AWS account ID for member account.
  final Input<String> accountId;

  /// The detector ID of the GuardDuty account where you want to create member accounts.
  final Input<String> detectorId;

  /// Boolean whether an email notification is sent to the accounts. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? disableEmailNotification;

  /// Email address for member account.
  final Input<String> email;

  /// Message for invitation.
  final Input<String>? invitationMessage;

  /// Boolean whether to invite the account to GuardDuty as a member. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. To detect if an invitation needs to be (re-)sent, the this provider state value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> based on a <span pulumi-lang-nodejs="`relationshipStatus`" pulumi-lang-dotnet="`RelationshipStatus`" pulumi-lang-go="`relationshipStatus`" pulumi-lang-python="`relationship_status`" pulumi-lang-yaml="`relationshipStatus`" pulumi-lang-java="`relationshipStatus`">`relationship_status`</span> of `Disabled`, `Enabled`, `Invited`, or `EmailVerificationInProgress`.
  final Input<bool>? invite;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  MemberArgs2({
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

  factory MemberArgs2.fromMap(Map<String, dynamic> map) {
    return MemberArgs2(
      accountId: Input.asInput<String>(map['accountId']),
      detectorId: Input.asInput<String>(map['detectorId']),
      disableEmailNotification:
          Input.asOptionalInput<bool>(map['disableEmailNotification']),
      email: Input.asInput<String>(map['email']),
      invitationMessage:
          Input.asOptionalInput<String>(map['invitationMessage']),
      invite: Input.asOptionalInput<bool>(map['invite']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}

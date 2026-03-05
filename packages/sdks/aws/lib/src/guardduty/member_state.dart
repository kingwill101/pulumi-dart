// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Member resources.
class MemberState {
  /// AWS account ID for member account.
  final pulumi.Input<String>? accountId;
  /// The detector ID of the GuardDuty account where you want to create member accounts.
  final pulumi.Input<String>? detectorId;
  /// Boolean whether an email notification is sent to the accounts. Defaults to `false`.
  final pulumi.Input<bool>? disableEmailNotification;
  /// Email address for member account.
  final pulumi.Input<String>? email;
  /// Message for invitation.
  final pulumi.Input<String>? invitationMessage;
  /// Boolean whether to invite the account to GuardDuty as a member. Defaults to `false`. To detect if an invitation needs to be (re-)sent, the this provider state value is `true` based on a `relationship_status` of `Disabled`, `Enabled`, `Invited`, or `EmailVerificationInProgress`.
  final pulumi.Input<bool>? invite;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The status of the relationship between the member account and its primary account. More information can be found in [Amazon GuardDuty API Reference](https://docs.aws.amazon.com/guardduty/latest/ug/get-members.html).
  final pulumi.Input<String>? relationshipStatus;

  /// Creates a new [MemberState].
  /// [accountId] AWS account ID for member account.
  /// [detectorId] The detector ID of the GuardDuty account where you want to create member accounts.
  /// [disableEmailNotification] Boolean whether an email notification is sent to the accounts. Defaults to `false`.
  /// [email] Email address for member account.
  /// [invitationMessage] Message for invitation.
  /// [invite] Boolean whether to invite the account to GuardDuty as a member. Defaults to `false`. To detect if an invitation needs to be (re-)sent, the this provider state value is `true` based on a `relationship_status` of `Disabled`, `Enabled`, `Invited`, or `EmailVerificationInProgress`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [relationshipStatus] The status of the relationship between the member account and its primary account. More information can be found in [Amazon GuardDuty API Reference](https://docs.aws.amazon.com/guardduty/latest/ug/get-members.html).
  MemberState({
    this.accountId,
    this.detectorId,
    this.disableEmailNotification,
    this.email,
    this.invitationMessage,
    this.invite,
    this.region,
    this.relationshipStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'detectorId': ?detectorId,
      'disableEmailNotification': ?disableEmailNotification,
      'email': ?email,
      'invitationMessage': ?invitationMessage,
      'invite': ?invite,
      'region': ?region,
      'relationshipStatus': ?relationshipStatus,
    };
  }

  factory MemberState.fromMap(Map<String, dynamic> map) {
    return MemberState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      detectorId: (() { final guardedValue = map['detectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableEmailNotification: (() { final guardedValue = map['disableEmailNotification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invitationMessage: (() { final guardedValue = map['invitationMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invite: (() { final guardedValue = map['invite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relationshipStatus: (() { final guardedValue = map['relationshipStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


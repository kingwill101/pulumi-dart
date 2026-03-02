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
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      detectorId: map['detectorId'] == null ? null : (map['detectorId'] as String).input(),
      disableEmailNotification: map['disableEmailNotification'] == null ? null : (map['disableEmailNotification'] as bool).input(),
      email: map['email'] == null ? null : (map['email'] as String).input(),
      invitationMessage: map['invitationMessage'] == null ? null : (map['invitationMessage'] as String).input(),
      invite: map['invite'] == null ? null : (map['invite'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      relationshipStatus: map['relationshipStatus'] == null ? null : (map['relationshipStatus'] as String).input(),
    );
  }
}


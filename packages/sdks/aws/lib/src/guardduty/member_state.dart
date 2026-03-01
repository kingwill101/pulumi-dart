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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? detectorId,
    pulumi.Output<bool>? disableEmailNotification,
    pulumi.Output<String>? email,
    pulumi.Output<String>? invitationMessage,
    pulumi.Output<bool>? invite,
    pulumi.Output<String>? region,
    pulumi.Output<String>? relationshipStatus,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      detectorId = pulumi.Input.asOptionalInput<String>(detectorId),
      disableEmailNotification = pulumi.Input.asOptionalInput<bool>(disableEmailNotification),
      email = pulumi.Input.asOptionalInput<String>(email),
      invitationMessage = pulumi.Input.asOptionalInput<String>(invitationMessage),
      invite = pulumi.Input.asOptionalInput<bool>(invite),
      region = pulumi.Input.asOptionalInput<String>(region),
      relationshipStatus = pulumi.Input.asOptionalInput<String>(relationshipStatus);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      detectorId: map['detectorId'] == null ? null : pulumi.Output.create<String>(map['detectorId'] as String),
      disableEmailNotification: map['disableEmailNotification'] == null ? null : pulumi.Output.create<bool>(map['disableEmailNotification'] as bool),
      email: map['email'] == null ? null : pulumi.Output.create<String>(map['email'] as String),
      invitationMessage: map['invitationMessage'] == null ? null : pulumi.Output.create<String>(map['invitationMessage'] as String),
      invite: map['invite'] == null ? null : pulumi.Output.create<bool>(map['invite'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      relationshipStatus: map['relationshipStatus'] == null ? null : pulumi.Output.create<String>(map['relationshipStatus'] as String),
    );
  }
}


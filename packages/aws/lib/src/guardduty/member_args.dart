// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_guardduty_member_member_args_doc}
/// The set of arguments for Member.
/// {@endtemplate}
/// {@macro pulumi_guardduty_member_member_args_doc}
class MemberArgs {
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

  /// Creates a new [MemberArgs].
  /// [accountId] AWS account ID for member account.
  /// [detectorId] The detector ID of the GuardDuty account where you want to create member accounts.
  /// [disableEmailNotification] Boolean whether an email notification is sent to the accounts. Defaults to `false`.
  /// [email] Email address for member account.
  /// [invitationMessage] Message for invitation.
  /// [invite] Boolean whether to invite the account to GuardDuty as a member. Defaults to `false`. To detect if an invitation needs to be (re-)sent, the this provider state value is `true` based on a `relationship_status` of `Disabled`, `Enabled`, `Invited`, or `EmailVerificationInProgress`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  MemberArgs({
    required String accountId,
    required String detectorId,
    bool? disableEmailNotification,
    required String email,
    String? invitationMessage,
    bool? invite,
    String? region,
  }) :
      accountId = pulumi.Input.asInput<String>(accountId),
      detectorId = pulumi.Input.asInput<String>(detectorId),
      disableEmailNotification = pulumi.Input.asOptionalInput<bool>(disableEmailNotification),
      email = pulumi.Input.asInput<String>(email),
      invitationMessage = pulumi.Input.asOptionalInput<String>(invitationMessage),
      invite = pulumi.Input.asOptionalInput<bool>(invite),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'detectorId': detectorId,
      'disableEmailNotification': ?disableEmailNotification,
      'email': email,
      'invitationMessage': ?invitationMessage,
      'invite': ?invite,
      'region': ?region,
    };
  }

  factory MemberArgs.fromMap(Map<String, dynamic> map) {
    return MemberArgs(
      accountId: map['accountId'] as String,
      detectorId: map['detectorId'] as String,
      disableEmailNotification: map['disableEmailNotification'] == null ? null : map['disableEmailNotification'] as bool,
      email: map['email'] as String,
      invitationMessage: map['invitationMessage'] == null ? null : map['invitationMessage'] as String,
      invite: map['invite'] == null ? null : map['invite'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}


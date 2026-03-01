// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_macie2_member_member_args_doc}
/// The set of arguments for Member.
/// {@endtemplate}
/// {@macro pulumi_macie2_member_member_args_doc}
class MemberArgs {
  /// The AWS account ID for the account.
  final pulumi.Input<String> accountId;
  /// The email address for the account.
  final pulumi.Input<String> email;
  /// Specifies whether to send an email notification to the root user of each account that the invitation will be sent to. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. To send an email notification to the root user of each account, set this value to `true`.
  final pulumi.Input<bool>? invitationDisableEmailNotification;
  /// A custom message to include in the invitation. Amazon Macie adds this message to the standard content that it sends for an invitation.
  final pulumi.Input<String>? invitationMessage;
  /// Send an invitation to a member
  final pulumi.Input<bool>? invite;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to `ENABLED`. Valid values are `ENABLED` or `PAUSED`.
  final pulumi.Input<String>? status;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MemberArgs].
  /// [accountId] The AWS account ID for the account.
  /// [email] The email address for the account.
  /// [invitationDisableEmailNotification] Specifies whether to send an email notification to the root user of each account that the invitation will be sent to. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. To send an email notification to the root user of each account, set this value to `true`.
  /// [invitationMessage] A custom message to include in the invitation. Amazon Macie adds this message to the standard content that it sends for an invitation.
  /// [invite] Send an invitation to a member
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Specifies the status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to `ENABLED`. Valid values are `ENABLED` or `PAUSED`.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  MemberArgs({
    required pulumi.Output<String> accountId,
    required pulumi.Output<String> email,
    pulumi.Output<bool>? invitationDisableEmailNotification,
    pulumi.Output<String>? invitationMessage,
    pulumi.Output<bool>? invite,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountId = pulumi.Input.asInput<String>(accountId),
      email = pulumi.Input.asInput<String>(email),
      invitationDisableEmailNotification = pulumi.Input.asOptionalInput<bool>(invitationDisableEmailNotification),
      invitationMessage = pulumi.Input.asOptionalInput<String>(invitationMessage),
      invite = pulumi.Input.asOptionalInput<bool>(invite),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'email': email,
      'invitationDisableEmailNotification': ?invitationDisableEmailNotification,
      'invitationMessage': ?invitationMessage,
      'invite': ?invite,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory MemberArgs.fromMap(Map<String, dynamic> map) {
    return MemberArgs(
      accountId: pulumi.Output.create<String>(map['accountId'] as String),
      email: pulumi.Output.create<String>(map['email'] as String),
      invitationDisableEmailNotification: map['invitationDisableEmailNotification'] == null ? null : pulumi.Output.create<bool>(map['invitationDisableEmailNotification'] as bool),
      invitationMessage: map['invitationMessage'] == null ? null : pulumi.Output.create<String>(map['invitationMessage'] as String),
      invite: map['invite'] == null ? null : pulumi.Output.create<bool>(map['invite'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


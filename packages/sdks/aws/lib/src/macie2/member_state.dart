// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Member resources.
class MemberState {
  /// AWS account ID for the account.
  final pulumi.Input<String?>? accountId;
  /// AWS account ID for the administrator account.
  final pulumi.Input<String?>? administratorAccountId;
  /// ARN of the account.
  final pulumi.Input<String?>? arn;
  /// Email address for the account.
  final pulumi.Input<String?>? email;
  /// Whether to send an email notification to the root user of each account that the invitation will be sent to. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. To send an email notification to the root user of each account, set this value to `true`.
  final pulumi.Input<bool?>? invitationDisableEmailNotification;
  /// Custom message to include in the invitation. Amazon Macie adds this message to the standard content that it sends for an invitation.
  final pulumi.Input<String?>? invitationMessage;
  /// Whether to send an invitation to a member.
  final pulumi.Input<bool?>? invite;
  /// Date and time, in UTC and extended RFC 3339 format, when an Amazon Macie membership invitation was last sent to the account. This value is null if a Macie invitation hasn't been sent to the account.
  final pulumi.Input<String?>? invitedAt;
  /// AWS account ID for the master account.
  final pulumi.Input<String?>? masterAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Current status of the relationship between the account and the administrator account.
  final pulumi.Input<String?>? relationshipStatus;
  /// Status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to `ENABLED`. Valid values are `ENABLED` or `PAUSED`.
  final pulumi.Input<String?>? status;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Date and time, in UTC and extended RFC 3339 format, of the most recent change to the status of the relationship between the account and the administrator account.
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [MemberState].
  /// [accountId] AWS account ID for the account.
  /// [administratorAccountId] AWS account ID for the administrator account.
  /// [arn] ARN of the account.
  /// [email] Email address for the account.
  /// [invitationDisableEmailNotification] Whether to send an email notification to the root user of each account that the invitation will be sent to. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. To send an email notification to the root user of each account, set this value to `true`.
  /// [invitationMessage] Custom message to include in the invitation. Amazon Macie adds this message to the standard content that it sends for an invitation.
  /// [invite] Whether to send an invitation to a member.
  /// [invitedAt] Date and time, in UTC and extended RFC 3339 format, when an Amazon Macie membership invitation was last sent to the account. This value is null if a Macie invitation hasn't been sent to the account.
  /// [masterAccountId] AWS account ID for the master account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [relationshipStatus] Current status of the relationship between the account and the administrator account.
  /// [status] Status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to `ENABLED`. Valid values are `ENABLED` or `PAUSED`.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [updatedAt] Date and time, in UTC and extended RFC 3339 format, of the most recent change to the status of the relationship between the account and the administrator account.
  const MemberState({
    this.accountId,
    this.administratorAccountId,
    this.arn,
    this.email,
    this.invitationDisableEmailNotification,
    this.invitationMessage,
    this.invite,
    this.invitedAt,
    this.masterAccountId,
    this.region,
    this.relationshipStatus,
    this.status,
    this.tags,
    this.tagsAll,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'administratorAccountId': ?administratorAccountId,
      'arn': ?arn,
      'email': ?email,
      'invitationDisableEmailNotification': ?invitationDisableEmailNotification,
      'invitationMessage': ?invitationMessage,
      'invite': ?invite,
      'invitedAt': ?invitedAt,
      'masterAccountId': ?masterAccountId,
      'region': ?region,
      'relationshipStatus': ?relationshipStatus,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'updatedAt': ?updatedAt,
    };
  }

  factory MemberState.fromMap(Map<String, dynamic> map) {
    return MemberState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      administratorAccountId: (() { final guardedValue = map['administratorAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invitationDisableEmailNotification: (() { final guardedValue = map['invitationDisableEmailNotification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      invitationMessage: (() { final guardedValue = map['invitationMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invite: (() { final guardedValue = map['invite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      invitedAt: (() { final guardedValue = map['invitedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterAccountId: (() { final guardedValue = map['masterAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relationshipStatus: (() { final guardedValue = map['relationshipStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

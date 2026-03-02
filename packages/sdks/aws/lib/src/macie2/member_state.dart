// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Member resources.
class MemberState {
  /// The AWS account ID for the account.
  final pulumi.Input<String>? accountId;
  /// The AWS account ID for the administrator account.
  final pulumi.Input<String>? administratorAccountId;
  /// The Amazon Resource Name (ARN) of the account.
  final pulumi.Input<String>? arn;
  /// The email address for the account.
  final pulumi.Input<String>? email;
  /// Specifies whether to send an email notification to the root user of each account that the invitation will be sent to. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. To send an email notification to the root user of each account, set this value to `true`.
  final pulumi.Input<bool>? invitationDisableEmailNotification;
  /// A custom message to include in the invitation. Amazon Macie adds this message to the standard content that it sends for an invitation.
  final pulumi.Input<String>? invitationMessage;
  /// Send an invitation to a member
  final pulumi.Input<bool>? invite;
  /// The date and time, in UTC and extended RFC 3339 format, when an Amazon Macie membership invitation was last sent to the account. This value is null if a Macie invitation hasn't been sent to the account.
  final pulumi.Input<String>? invitedAt;
  final pulumi.Input<String>? masterAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The current status of the relationship between the account and the administrator account.
  final pulumi.Input<String>? relationshipStatus;
  /// Specifies the status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to `ENABLED`. Valid values are `ENABLED` or `PAUSED`.
  final pulumi.Input<String>? status;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The date and time, in UTC and extended RFC 3339 format, of the most recent change to the status of the relationship between the account and the administrator account.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [MemberState].
  /// [accountId] The AWS account ID for the account.
  /// [administratorAccountId] The AWS account ID for the administrator account.
  /// [arn] The Amazon Resource Name (ARN) of the account.
  /// [email] The email address for the account.
  /// [invitationDisableEmailNotification] Specifies whether to send an email notification to the root user of each account that the invitation will be sent to. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. To send an email notification to the root user of each account, set this value to `true`.
  /// [invitationMessage] A custom message to include in the invitation. Amazon Macie adds this message to the standard content that it sends for an invitation.
  /// [invite] Send an invitation to a member
  /// [invitedAt] The date and time, in UTC and extended RFC 3339 format, when an Amazon Macie membership invitation was last sent to the account. This value is null if a Macie invitation hasn't been sent to the account.
  /// [masterAccountId] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [relationshipStatus] The current status of the relationship between the account and the administrator account.
  /// [status] Specifies the status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to `ENABLED`. Valid values are `ENABLED` or `PAUSED`.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [updatedAt] The date and time, in UTC and extended RFC 3339 format, of the most recent change to the status of the relationship between the account and the administrator account.
  MemberState({
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
      accountId: map['accountId'] == null ? null : ((map['accountId'] as String).input()).input(),
      administratorAccountId: map['administratorAccountId'] == null ? null : ((map['administratorAccountId'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      email: map['email'] == null ? null : ((map['email'] as String).input()).input(),
      invitationDisableEmailNotification: map['invitationDisableEmailNotification'] == null ? null : ((map['invitationDisableEmailNotification'] as bool).input()).input(),
      invitationMessage: map['invitationMessage'] == null ? null : ((map['invitationMessage'] as String).input()).input(),
      invite: map['invite'] == null ? null : ((map['invite'] as bool).input()).input(),
      invitedAt: map['invitedAt'] == null ? null : ((map['invitedAt'] as String).input()).input(),
      masterAccountId: map['masterAccountId'] == null ? null : ((map['masterAccountId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      relationshipStatus: map['relationshipStatus'] == null ? null : ((map['relationshipStatus'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      updatedAt: map['updatedAt'] == null ? null : ((map['updatedAt'] as String).input()).input(),
    );
  }
}


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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? administratorAccountId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? email,
    pulumi.Output<bool>? invitationDisableEmailNotification,
    pulumi.Output<String>? invitationMessage,
    pulumi.Output<bool>? invite,
    pulumi.Output<String>? invitedAt,
    pulumi.Output<String>? masterAccountId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? relationshipStatus,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? updatedAt,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      administratorAccountId = pulumi.Input.asOptionalInput<String>(administratorAccountId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      email = pulumi.Input.asOptionalInput<String>(email),
      invitationDisableEmailNotification = pulumi.Input.asOptionalInput<bool>(invitationDisableEmailNotification),
      invitationMessage = pulumi.Input.asOptionalInput<String>(invitationMessage),
      invite = pulumi.Input.asOptionalInput<bool>(invite),
      invitedAt = pulumi.Input.asOptionalInput<String>(invitedAt),
      masterAccountId = pulumi.Input.asOptionalInput<String>(masterAccountId),
      region = pulumi.Input.asOptionalInput<String>(region),
      relationshipStatus = pulumi.Input.asOptionalInput<String>(relationshipStatus),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      administratorAccountId: map['administratorAccountId'] == null ? null : pulumi.Output.create<String>(map['administratorAccountId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      email: map['email'] == null ? null : pulumi.Output.create<String>(map['email'] as String),
      invitationDisableEmailNotification: map['invitationDisableEmailNotification'] == null ? null : pulumi.Output.create<bool>(map['invitationDisableEmailNotification'] as bool),
      invitationMessage: map['invitationMessage'] == null ? null : pulumi.Output.create<String>(map['invitationMessage'] as String),
      invite: map['invite'] == null ? null : pulumi.Output.create<bool>(map['invite'] as bool),
      invitedAt: map['invitedAt'] == null ? null : pulumi.Output.create<String>(map['invitedAt'] as String),
      masterAccountId: map['masterAccountId'] == null ? null : pulumi.Output.create<String>(map['masterAccountId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      relationshipStatus: map['relationshipStatus'] == null ? null : pulumi.Output.create<String>(map['relationshipStatus'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
    );
  }
}


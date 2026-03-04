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
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      administratorAccountId: (() {
        final guardedValue = map['administratorAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      email: (() {
        final guardedValue = map['email'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      invitationDisableEmailNotification: (() {
        final guardedValue = map['invitationDisableEmailNotification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      invitationMessage: (() {
        final guardedValue = map['invitationMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      invite: (() {
        final guardedValue = map['invite'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      invitedAt: (() {
        final guardedValue = map['invitedAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      masterAccountId: (() {
        final guardedValue = map['masterAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      relationshipStatus: (() {
        final guardedValue = map['relationshipStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      updatedAt: (() {
        final guardedValue = map['updatedAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

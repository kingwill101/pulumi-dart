// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Member resources.
class MemberState {
  /// AWS account ID for the account.
  final pulumi.Input<String>? accountId;
  /// AWS account ID for the administrator account.
  final pulumi.Input<String>? administratorId;
  /// If set to true, then the root user of the invited account will _not_ receive an email notification. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. By default, this is set to `false`.
  final pulumi.Input<bool>? disableEmailNotification;
  final pulumi.Input<String>? disabledReason;
  /// Email address for the account.
  final pulumi.Input<String>? emailAddress;
  /// ARN of the behavior graph to invite the member accounts to contribute their data to.
  final pulumi.Input<String>? graphArn;
  /// Date and time, in UTC and extended RFC 3339 format, when an Amazon Detective membership invitation was last sent to the account.
  final pulumi.Input<String>? invitedTime;
  /// A custom message to include in the invitation. Amazon Detective adds this message to the standard content that it sends for an invitation.
  final pulumi.Input<String>? message;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Current membership status of the member account.
  final pulumi.Input<String>? status;
  /// Date and time, in UTC and extended RFC 3339 format, of the most recent change to the member account's status.
  final pulumi.Input<String>? updatedTime;
  /// Data volume in bytes per day for the member account.
  final pulumi.Input<String>? volumeUsageInBytes;

  /// Creates a new [MemberState].
  /// [accountId] AWS account ID for the account.
  /// [administratorId] AWS account ID for the administrator account.
  /// [disableEmailNotification] If set to true, then the root user of the invited account will _not_ receive an email notification. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. By default, this is set to `false`.
  /// [disabledReason] Optional.
  /// [emailAddress] Email address for the account.
  /// [graphArn] ARN of the behavior graph to invite the member accounts to contribute their data to.
  /// [invitedTime] Date and time, in UTC and extended RFC 3339 format, when an Amazon Detective membership invitation was last sent to the account.
  /// [message] A custom message to include in the invitation. Amazon Detective adds this message to the standard content that it sends for an invitation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Current membership status of the member account.
  /// [updatedTime] Date and time, in UTC and extended RFC 3339 format, of the most recent change to the member account's status.
  /// [volumeUsageInBytes] Data volume in bytes per day for the member account.
  MemberState({
    this.accountId,
    this.administratorId,
    this.disableEmailNotification,
    this.disabledReason,
    this.emailAddress,
    this.graphArn,
    this.invitedTime,
    this.message,
    this.region,
    this.status,
    this.updatedTime,
    this.volumeUsageInBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'administratorId': ?administratorId,
      'disableEmailNotification': ?disableEmailNotification,
      'disabledReason': ?disabledReason,
      'emailAddress': ?emailAddress,
      'graphArn': ?graphArn,
      'invitedTime': ?invitedTime,
      'message': ?message,
      'region': ?region,
      'status': ?status,
      'updatedTime': ?updatedTime,
      'volumeUsageInBytes': ?volumeUsageInBytes,
    };
  }

  factory MemberState.fromMap(Map<String, dynamic> map) {
    return MemberState(
      accountId: map['accountId'] == null ? null : ((map['accountId'] as String).input()).input(),
      administratorId: map['administratorId'] == null ? null : ((map['administratorId'] as String).input()).input(),
      disableEmailNotification: map['disableEmailNotification'] == null ? null : ((map['disableEmailNotification'] as bool).input()).input(),
      disabledReason: map['disabledReason'] == null ? null : ((map['disabledReason'] as String).input()).input(),
      emailAddress: map['emailAddress'] == null ? null : ((map['emailAddress'] as String).input()).input(),
      graphArn: map['graphArn'] == null ? null : ((map['graphArn'] as String).input()).input(),
      invitedTime: map['invitedTime'] == null ? null : ((map['invitedTime'] as String).input()).input(),
      message: map['message'] == null ? null : ((map['message'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      updatedTime: map['updatedTime'] == null ? null : ((map['updatedTime'] as String).input()).input(),
      volumeUsageInBytes: map['volumeUsageInBytes'] == null ? null : ((map['volumeUsageInBytes'] as String).input()).input(),
    );
  }
}


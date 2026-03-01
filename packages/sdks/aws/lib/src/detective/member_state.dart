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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? administratorId,
    pulumi.Output<bool>? disableEmailNotification,
    pulumi.Output<String>? disabledReason,
    pulumi.Output<String>? emailAddress,
    pulumi.Output<String>? graphArn,
    pulumi.Output<String>? invitedTime,
    pulumi.Output<String>? message,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<String>? updatedTime,
    pulumi.Output<String>? volumeUsageInBytes,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      administratorId = pulumi.Input.asOptionalInput<String>(administratorId),
      disableEmailNotification = pulumi.Input.asOptionalInput<bool>(disableEmailNotification),
      disabledReason = pulumi.Input.asOptionalInput<String>(disabledReason),
      emailAddress = pulumi.Input.asOptionalInput<String>(emailAddress),
      graphArn = pulumi.Input.asOptionalInput<String>(graphArn),
      invitedTime = pulumi.Input.asOptionalInput<String>(invitedTime),
      message = pulumi.Input.asOptionalInput<String>(message),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      updatedTime = pulumi.Input.asOptionalInput<String>(updatedTime),
      volumeUsageInBytes = pulumi.Input.asOptionalInput<String>(volumeUsageInBytes);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      administratorId: map['administratorId'] == null ? null : pulumi.Output.create<String>(map['administratorId'] as String),
      disableEmailNotification: map['disableEmailNotification'] == null ? null : pulumi.Output.create<bool>(map['disableEmailNotification'] as bool),
      disabledReason: map['disabledReason'] == null ? null : pulumi.Output.create<String>(map['disabledReason'] as String),
      emailAddress: map['emailAddress'] == null ? null : pulumi.Output.create<String>(map['emailAddress'] as String),
      graphArn: map['graphArn'] == null ? null : pulumi.Output.create<String>(map['graphArn'] as String),
      invitedTime: map['invitedTime'] == null ? null : pulumi.Output.create<String>(map['invitedTime'] as String),
      message: map['message'] == null ? null : pulumi.Output.create<String>(map['message'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      updatedTime: map['updatedTime'] == null ? null : pulumi.Output.create<String>(map['updatedTime'] as String),
      volumeUsageInBytes: map['volumeUsageInBytes'] == null ? null : pulumi.Output.create<String>(map['volumeUsageInBytes'] as String),
    );
  }
}


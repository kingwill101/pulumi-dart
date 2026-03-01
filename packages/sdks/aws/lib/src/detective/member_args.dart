// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_detective_member_member_args_doc}
/// The set of arguments for Member.
/// {@endtemplate}
/// {@macro pulumi_detective_member_member_args_doc}
class MemberArgs {
  /// AWS account ID for the account.
  final pulumi.Input<String> accountId;
  /// If set to true, then the root user of the invited account will _not_ receive an email notification. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. By default, this is set to `false`.
  final pulumi.Input<bool>? disableEmailNotification;
  /// Email address for the account.
  final pulumi.Input<String> emailAddress;
  /// ARN of the behavior graph to invite the member accounts to contribute their data to.
  final pulumi.Input<String> graphArn;
  /// A custom message to include in the invitation. Amazon Detective adds this message to the standard content that it sends for an invitation.
  final pulumi.Input<String>? message;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [MemberArgs].
  /// [accountId] AWS account ID for the account.
  /// [disableEmailNotification] If set to true, then the root user of the invited account will _not_ receive an email notification. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. By default, this is set to `false`.
  /// [emailAddress] Email address for the account.
  /// [graphArn] ARN of the behavior graph to invite the member accounts to contribute their data to.
  /// [message] A custom message to include in the invitation. Amazon Detective adds this message to the standard content that it sends for an invitation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  MemberArgs({
    required pulumi.Output<String> accountId,
    pulumi.Output<bool>? disableEmailNotification,
    required pulumi.Output<String> emailAddress,
    required pulumi.Output<String> graphArn,
    pulumi.Output<String>? message,
    pulumi.Output<String>? region,
  }) :
      accountId = pulumi.Input.asInput<String>(accountId),
      disableEmailNotification = pulumi.Input.asOptionalInput<bool>(disableEmailNotification),
      emailAddress = pulumi.Input.asInput<String>(emailAddress),
      graphArn = pulumi.Input.asInput<String>(graphArn),
      message = pulumi.Input.asOptionalInput<String>(message),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'disableEmailNotification': ?disableEmailNotification,
      'emailAddress': emailAddress,
      'graphArn': graphArn,
      'message': ?message,
      'region': ?region,
    };
  }

  factory MemberArgs.fromMap(Map<String, dynamic> map) {
    return MemberArgs(
      accountId: pulumi.Output.create<String>(map['accountId'] as String),
      disableEmailNotification: map['disableEmailNotification'] == null ? null : pulumi.Output.create<bool>(map['disableEmailNotification'] as bool),
      emailAddress: pulumi.Output.create<String>(map['emailAddress'] as String),
      graphArn: pulumi.Output.create<String>(map['graphArn'] as String),
      message: map['message'] == null ? null : pulumi.Output.create<String>(map['message'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}


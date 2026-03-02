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
    required this.accountId,
    this.disableEmailNotification,
    required this.emailAddress,
    required this.graphArn,
    this.message,
    this.region,
  });

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
      accountId: (map['accountId'] as String).input(),
      disableEmailNotification: map['disableEmailNotification'] == null ? null : (map['disableEmailNotification'] as bool).input(),
      emailAddress: (map['emailAddress'] as String).input(),
      graphArn: (map['graphArn'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}


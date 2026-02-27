// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Member.
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

  MemberArgs({
    required this.accountId,
    this.disableEmailNotification,
    required this.emailAddress,
    required this.graphArn,
    this.message,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    final disableEmailNotificationValue = disableEmailNotification;
    if (disableEmailNotificationValue != null) {
      map['disableEmailNotification'] = disableEmailNotificationValue;
    }
    map['emailAddress'] = emailAddress;
    map['graphArn'] = graphArn;
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory MemberArgs.fromMap(Map<String, dynamic> map) {
    return MemberArgs(
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      disableEmailNotification:
          pulumi.Input.asOptionalInput<bool>(map['disableEmailNotification']),
      emailAddress: pulumi.Input.asInput<String>(map['emailAddress']),
      graphArn: pulumi.Input.asInput<String>(map['graphArn']),
      message: pulumi.Input.asOptionalInput<String>(map['message']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}

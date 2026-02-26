// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Member.
class MemberArgs {
  /// AWS account ID for the account.
  final Input<String> accountId;

  /// If set to true, then the root user of the invited account will _not_ receive an email notification. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. By default, this is set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? disableEmailNotification;

  /// Email address for the account.
  final Input<String> emailAddress;

  /// ARN of the behavior graph to invite the member accounts to contribute their data to.
  final Input<String> graphArn;

  /// A custom message to include in the invitation. Amazon Detective adds this message to the standard content that it sends for an invitation.
  final Input<String>? message;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      accountId: Input.asInput<String>(map['accountId']),
      disableEmailNotification:
          Input.asOptionalInput<bool>(map['disableEmailNotification']),
      emailAddress: Input.asInput<String>(map['emailAddress']),
      graphArn: Input.asInput<String>(map['graphArn']),
      message: Input.asOptionalInput<String>(map['message']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}

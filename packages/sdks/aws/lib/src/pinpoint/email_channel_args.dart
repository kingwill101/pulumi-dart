// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pinpoint_email_channel_email_channel_args_doc}
/// The set of arguments for EmailChannel.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_email_channel_email_channel_args_doc}
class EmailChannelArgs {
  /// The application ID.
  final pulumi.Input<String> applicationId;
  /// The ARN of the Amazon SES configuration set that you want to apply to messages that you send through the channel.
  final pulumi.Input<String>? configurationSet;
  /// Whether the channel is enabled or disabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The email address used to send emails from. You can use email only (`user@example.com`) or friendly address (`User <user@example.com>`). This field comply with [RFC 5322](https://www.ietf.org/rfc/rfc5322.txt).
  final pulumi.Input<String> fromAddress;
  /// The ARN of an identity verified with SES.
  final pulumi.Input<String> identity;
  /// The ARN of an IAM role for Amazon Pinpoint to use to send email from your campaigns or journeys through Amazon SES.
  final pulumi.Input<String>? orchestrationSendingRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// *Deprecated* The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [EmailChannelArgs].
  /// [applicationId] The application ID.
  /// [configurationSet] The ARN of the Amazon SES configuration set that you want to apply to messages that you send through the channel.
  /// [enabled] Whether the channel is enabled or disabled. Defaults to `true`.
  /// [fromAddress] The email address used to send emails from. You can use email only (`user@example.com`) or friendly address (`User <user@example.com>`). This field comply with [RFC 5322](https://www.ietf.org/rfc/rfc5322.txt).
  /// [identity] The ARN of an identity verified with SES.
  /// [orchestrationSendingRoleArn] The ARN of an IAM role for Amazon Pinpoint to use to send email from your campaigns or journeys through Amazon SES.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] *Deprecated* The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service.
  EmailChannelArgs({
    required this.applicationId,
    this.configurationSet,
    this.enabled,
    required this.fromAddress,
    required this.identity,
    this.orchestrationSendingRoleArn,
    this.region,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'configurationSet': ?configurationSet,
      'enabled': ?enabled,
      'fromAddress': fromAddress,
      'identity': identity,
      'orchestrationSendingRoleArn': ?orchestrationSendingRoleArn,
      'region': ?region,
      'roleArn': ?roleArn,
    };
  }

  factory EmailChannelArgs.fromMap(Map<String, dynamic> map) {
    return EmailChannelArgs(
      applicationId: (map['applicationId'] as String).input(),
      configurationSet: map['configurationSet'] == null ? null : ((map['configurationSet'] as String).input()).input(),
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      fromAddress: (map['fromAddress'] as String).input(),
      identity: (map['identity'] as String).input(),
      orchestrationSendingRoleArn: map['orchestrationSendingRoleArn'] == null ? null : ((map['orchestrationSendingRoleArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
    );
  }
}


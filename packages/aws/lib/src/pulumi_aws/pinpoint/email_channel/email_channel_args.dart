// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EmailChannel.
class EmailChannelArgs {
  /// The application ID.
  final Input<String> applicationId;

  /// The ARN of the Amazon SES configuration set that you want to apply to messages that you send through the channel.
  final Input<String>? configurationSet;

  /// Whether the channel is enabled or disabled. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? enabled;

  /// The email address used to send emails from. You can use email only (`user@example.com`) or friendly address (`User <user@example.com>`). This field comply with [RFC 5322](https://www.ietf.org/rfc/rfc5322.txt).
  final Input<String> fromAddress;

  /// The ARN of an identity verified with SES.
  final Input<String> identity;

  /// The ARN of an IAM role for Amazon Pinpoint to use to send email from your campaigns or journeys through Amazon SES.
  final Input<String>? orchestrationSendingRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// *Deprecated* The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service.
  final Input<String>? roleArn;

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
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    final configurationSetValue = configurationSet;
    if (configurationSetValue != null) {
      map['configurationSet'] = configurationSetValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    map['fromAddress'] = fromAddress;
    map['identity'] = identity;
    final orchestrationSendingRoleArnValue = orchestrationSendingRoleArn;
    if (orchestrationSendingRoleArnValue != null) {
      map['orchestrationSendingRoleArn'] = orchestrationSendingRoleArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    return map;
  }

  factory EmailChannelArgs.fromMap(Map<String, dynamic> map) {
    return EmailChannelArgs(
      applicationId: Input.asInput<String>(map['applicationId']),
      configurationSet: Input.asOptionalInput<String>(map['configurationSet']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      fromAddress: Input.asInput<String>(map['fromAddress']),
      identity: Input.asInput<String>(map['identity']),
      orchestrationSendingRoleArn:
          Input.asOptionalInput<String>(map['orchestrationSendingRoleArn']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asOptionalInput<String>(map['roleArn']),
    );
  }
}

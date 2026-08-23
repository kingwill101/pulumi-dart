// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EmailChannel resources.
class EmailChannelState {
  /// Application ID.
  final pulumi.Input<String>? applicationId;
  /// ARN of the Amazon SES configuration set that you want to apply to messages that you send through the channel.
  final pulumi.Input<String>? configurationSet;
  /// Whether the channel is enabled or disabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Email address used to send emails from. You can use email only (`user@example.com`) or friendly address (`User &lt;user@example.com&gt;`). This field comply with [RFC 5322](https://www.ietf.org/rfc/rfc5322.txt).
  final pulumi.Input<String>? fromAddress;
  /// ARN of an identity verified with SES.
  final pulumi.Input<String>? identity;
  /// (**Deprecated**) Messages per second that can be sent.
  final pulumi.Input<int>? messagesPerSecond;
  /// ARN of an IAM role for AWS End User Messaging to use to send email from your campaigns or journeys through Amazon SES.
  final pulumi.Input<String>? orchestrationSendingRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [EmailChannelState].
  /// [applicationId] Application ID.
  /// [configurationSet] ARN of the Amazon SES configuration set that you want to apply to messages that you send through the channel.
  /// [enabled] Whether the channel is enabled or disabled. Defaults to `true`.
  /// [fromAddress] Email address used to send emails from. You can use email only (`user@example.com`) or friendly address (`User &lt;user@example.com&gt;`). This field comply with [RFC 5322](https://www.ietf.org/rfc/rfc5322.txt).
  /// [identity] ARN of an identity verified with SES.
  /// [messagesPerSecond] (**Deprecated**) Messages per second that can be sent.
  /// [orchestrationSendingRoleArn] ARN of an IAM role for AWS End User Messaging to use to send email from your campaigns or journeys through Amazon SES.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service.
  const EmailChannelState({
    this.applicationId,
    this.configurationSet,
    this.enabled,
    this.fromAddress,
    this.identity,
    this.messagesPerSecond,
    this.orchestrationSendingRoleArn,
    this.region,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'configurationSet': ?configurationSet,
      'enabled': ?enabled,
      'fromAddress': ?fromAddress,
      'identity': ?identity,
      'messagesPerSecond': ?messagesPerSecond,
      'orchestrationSendingRoleArn': ?orchestrationSendingRoleArn,
      'region': ?region,
      'roleArn': ?roleArn,
    };
  }

  factory EmailChannelState.fromMap(Map<String, dynamic> map) {
    return EmailChannelState(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationSet: (() { final guardedValue = map['configurationSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fromAddress: (() { final guardedValue = map['fromAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messagesPerSecond: (() { final guardedValue = map['messagesPerSecond']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      orchestrationSendingRoleArn: (() { final guardedValue = map['orchestrationSendingRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

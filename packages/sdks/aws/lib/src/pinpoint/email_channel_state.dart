// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EmailChannel resources.
class EmailChannelState {
  /// The application ID.
  final pulumi.Input<String>? applicationId;
  /// The ARN of the Amazon SES configuration set that you want to apply to messages that you send through the channel.
  final pulumi.Input<String>? configurationSet;
  /// Whether the channel is enabled or disabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The email address used to send emails from. You can use email only (`user@example.com`) or friendly address (`User <user@example.com>`). This field comply with [RFC 5322](https://www.ietf.org/rfc/rfc5322.txt).
  final pulumi.Input<String>? fromAddress;
  /// The ARN of an identity verified with SES.
  final pulumi.Input<String>? identity;
  /// Messages per second that can be sent.
  final pulumi.Input<int>? messagesPerSecond;
  /// The ARN of an IAM role for Amazon Pinpoint to use to send email from your campaigns or journeys through Amazon SES.
  final pulumi.Input<String>? orchestrationSendingRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// *Deprecated* The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [EmailChannelState].
  /// [applicationId] The application ID.
  /// [configurationSet] The ARN of the Amazon SES configuration set that you want to apply to messages that you send through the channel.
  /// [enabled] Whether the channel is enabled or disabled. Defaults to `true`.
  /// [fromAddress] The email address used to send emails from. You can use email only (`user@example.com`) or friendly address (`User <user@example.com>`). This field comply with [RFC 5322](https://www.ietf.org/rfc/rfc5322.txt).
  /// [identity] The ARN of an identity verified with SES.
  /// [messagesPerSecond] Messages per second that can be sent.
  /// [orchestrationSendingRoleArn] The ARN of an IAM role for Amazon Pinpoint to use to send email from your campaigns or journeys through Amazon SES.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] *Deprecated* The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service.
  EmailChannelState({
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? configurationSet,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? fromAddress,
    pulumi.Output<String>? identity,
    pulumi.Output<int>? messagesPerSecond,
    pulumi.Output<String>? orchestrationSendingRoleArn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      configurationSet = pulumi.Input.asOptionalInput<String>(configurationSet),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      fromAddress = pulumi.Input.asOptionalInput<String>(fromAddress),
      identity = pulumi.Input.asOptionalInput<String>(identity),
      messagesPerSecond = pulumi.Input.asOptionalInput<int>(messagesPerSecond),
      orchestrationSendingRoleArn = pulumi.Input.asOptionalInput<String>(orchestrationSendingRoleArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn);

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
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      configurationSet: map['configurationSet'] == null ? null : pulumi.Output.create<String>(map['configurationSet'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      fromAddress: map['fromAddress'] == null ? null : pulumi.Output.create<String>(map['fromAddress'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<String>(map['identity'] as String),
      messagesPerSecond: map['messagesPerSecond'] == null ? null : pulumi.Output.create<int>(map['messagesPerSecond'] as int),
      orchestrationSendingRoleArn: map['orchestrationSendingRoleArn'] == null ? null : pulumi.Output.create<String>(map['orchestrationSendingRoleArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pinpoint_sms_channel_sms_channel_args_doc}
/// The set of arguments for SmsChannel.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_sms_channel_sms_channel_args_doc}
class SmsChannelArgs {
  /// ID of the application.
  final pulumi.Input<String> applicationId;
  /// Whether the channel is enabled or disabled. By default, it is set to `true`.
  final pulumi.Input<bool>? enabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the sender for your messages.
  final pulumi.Input<String>? senderId;
  /// Short Code registered with the phone provider.
  final pulumi.Input<String>? shortCode;

  /// Creates a new [SmsChannelArgs].
  /// [applicationId] ID of the application.
  /// [enabled] Whether the channel is enabled or disabled. By default, it is set to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [senderId] Identifier of the sender for your messages.
  /// [shortCode] Short Code registered with the phone provider.
  SmsChannelArgs({
    required pulumi.Output<String> applicationId,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? region,
    pulumi.Output<String>? senderId,
    pulumi.Output<String>? shortCode,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      region = pulumi.Input.asOptionalInput<String>(region),
      senderId = pulumi.Input.asOptionalInput<String>(senderId),
      shortCode = pulumi.Input.asOptionalInput<String>(shortCode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'enabled': ?enabled,
      'region': ?region,
      'senderId': ?senderId,
      'shortCode': ?shortCode,
    };
  }

  factory SmsChannelArgs.fromMap(Map<String, dynamic> map) {
    return SmsChannelArgs(
      applicationId: pulumi.Output.create<String>(map['applicationId'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      senderId: map['senderId'] == null ? null : pulumi.Output.create<String>(map['senderId'] as String),
      shortCode: map['shortCode'] == null ? null : pulumi.Output.create<String>(map['shortCode'] as String),
    );
  }
}


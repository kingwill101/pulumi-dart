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
    required this.applicationId,
    this.enabled,
    this.region,
    this.senderId,
    this.shortCode,
  });

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
      applicationId: (map['applicationId'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      senderId: map['senderId'] == null ? null : (map['senderId'] as String).input(),
      shortCode: map['shortCode'] == null ? null : (map['shortCode'] as String).input(),
    );
  }
}


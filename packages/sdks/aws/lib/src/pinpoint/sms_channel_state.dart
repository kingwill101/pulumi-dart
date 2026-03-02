// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SmsChannel resources.
class SmsChannelState {
  /// ID of the application.
  final pulumi.Input<String>? applicationId;
  /// Whether the channel is enabled or disabled. By default, it is set to `true`.
  final pulumi.Input<bool>? enabled;
  /// Maximum number of promotional messages that can be sent per second.
  final pulumi.Input<int>? promotionalMessagesPerSecond;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the sender for your messages.
  final pulumi.Input<String>? senderId;
  /// Short Code registered with the phone provider.
  final pulumi.Input<String>? shortCode;
  /// Maximum number of transactional messages per second that can be sent.
  final pulumi.Input<int>? transactionalMessagesPerSecond;

  /// Creates a new [SmsChannelState].
  /// [applicationId] ID of the application.
  /// [enabled] Whether the channel is enabled or disabled. By default, it is set to `true`.
  /// [promotionalMessagesPerSecond] Maximum number of promotional messages that can be sent per second.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [senderId] Identifier of the sender for your messages.
  /// [shortCode] Short Code registered with the phone provider.
  /// [transactionalMessagesPerSecond] Maximum number of transactional messages per second that can be sent.
  SmsChannelState({
    this.applicationId,
    this.enabled,
    this.promotionalMessagesPerSecond,
    this.region,
    this.senderId,
    this.shortCode,
    this.transactionalMessagesPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'enabled': ?enabled,
      'promotionalMessagesPerSecond': ?promotionalMessagesPerSecond,
      'region': ?region,
      'senderId': ?senderId,
      'shortCode': ?shortCode,
      'transactionalMessagesPerSecond': ?transactionalMessagesPerSecond,
    };
  }

  factory SmsChannelState.fromMap(Map<String, dynamic> map) {
    return SmsChannelState(
      applicationId: map['applicationId'] == null ? null : ((map['applicationId'] as String).input()).input(),
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      promotionalMessagesPerSecond: map['promotionalMessagesPerSecond'] == null ? null : ((map['promotionalMessagesPerSecond'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      senderId: map['senderId'] == null ? null : ((map['senderId'] as String).input()).input(),
      shortCode: map['shortCode'] == null ? null : ((map['shortCode'] as String).input()).input(),
      transactionalMessagesPerSecond: map['transactionalMessagesPerSecond'] == null ? null : ((map['transactionalMessagesPerSecond'] as int).input()).input(),
    );
  }
}


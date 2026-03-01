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
    pulumi.Output<String>? applicationId,
    pulumi.Output<bool>? enabled,
    pulumi.Output<int>? promotionalMessagesPerSecond,
    pulumi.Output<String>? region,
    pulumi.Output<String>? senderId,
    pulumi.Output<String>? shortCode,
    pulumi.Output<int>? transactionalMessagesPerSecond,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      promotionalMessagesPerSecond = pulumi.Input.asOptionalInput<int>(promotionalMessagesPerSecond),
      region = pulumi.Input.asOptionalInput<String>(region),
      senderId = pulumi.Input.asOptionalInput<String>(senderId),
      shortCode = pulumi.Input.asOptionalInput<String>(shortCode),
      transactionalMessagesPerSecond = pulumi.Input.asOptionalInput<int>(transactionalMessagesPerSecond);

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
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      promotionalMessagesPerSecond: map['promotionalMessagesPerSecond'] == null ? null : pulumi.Output.create<int>(map['promotionalMessagesPerSecond'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      senderId: map['senderId'] == null ? null : pulumi.Output.create<String>(map['senderId'] as String),
      shortCode: map['shortCode'] == null ? null : pulumi.Output.create<String>(map['shortCode'] as String),
      transactionalMessagesPerSecond: map['transactionalMessagesPerSecond'] == null ? null : pulumi.Output.create<int>(map['transactionalMessagesPerSecond'] as int),
    );
  }
}


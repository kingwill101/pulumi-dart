// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SmsChannel.
class SmsChannelArgs {
  /// ID of the application.
  final Input<String> applicationId;

  /// Whether the channel is enabled or disabled. By default, it is set to `true`.
  final Input<bool>? enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier of the sender for your messages.
  final Input<String>? senderId;

  /// Short Code registered with the phone provider.
  final Input<String>? shortCode;

  SmsChannelArgs({
    required this.applicationId,
    this.enabled,
    this.region,
    this.senderId,
    this.shortCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final senderIdValue = senderId;
    if (senderIdValue != null) {
      map['senderId'] = senderIdValue;
    }
    final shortCodeValue = shortCode;
    if (shortCodeValue != null) {
      map['shortCode'] = shortCodeValue;
    }
    return map;
  }

  factory SmsChannelArgs.fromMap(Map<String, dynamic> map) {
    return SmsChannelArgs(
      applicationId: Input.asInput<String>(map['applicationId']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      region: Input.asOptionalInput<String>(map['region']),
      senderId: Input.asOptionalInput<String>(map['senderId']),
      shortCode: Input.asOptionalInput<String>(map['shortCode']),
    );
  }
}

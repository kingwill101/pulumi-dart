// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiAlarmRuleNotificationSettingsNotificationReceiver {
  /// The type of the receiver. Valid values: AliyunUid/DingToken/FeishuToken/WebHookUrl.
  final pulumi.Input<String>? receiverType;
  /// Receiver Value List
  final pulumi.Input<List<String>>? receiverValues;

  /// Creates a new [DiAlarmRuleNotificationSettingsNotificationReceiver].
  /// [receiverType] The type of the receiver. Valid values: AliyunUid/DingToken/FeishuToken/WebHookUrl.
  /// [receiverValues] Receiver Value List
  const DiAlarmRuleNotificationSettingsNotificationReceiver({
    this.receiverType,
    this.receiverValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'receiverType': ?receiverType,
      'receiverValues': ?receiverValues,
    };
  }

  factory DiAlarmRuleNotificationSettingsNotificationReceiver.fromMap(Map<String, dynamic> map) {
    return DiAlarmRuleNotificationSettingsNotificationReceiver(
      receiverType: (() { final guardedValue = map['receiverType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      receiverValues: (() { final guardedValue = map['receiverValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}


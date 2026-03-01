// ignore_for_file: unused_element, unnecessary_cast


class DiAlarmRuleNotificationSettingsNotificationReceiver {
  /// The type of the receiver. Valid values: AliyunUid/DingToken/FeishuToken/WebHookUrl.
  final String? receiverType;
  /// Receiver Value List
  final List<String>? receiverValues;

  /// Creates a new [DiAlarmRuleNotificationSettingsNotificationReceiver].
  /// [receiverType] The type of the receiver. Valid values: AliyunUid/DingToken/FeishuToken/WebHookUrl.
  /// [receiverValues] Receiver Value List
  DiAlarmRuleNotificationSettingsNotificationReceiver({
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
      receiverType: map['receiverType'] == null ? null : map['receiverType'] as String,
      receiverValues: map['receiverValues'] == null ? null : (map['receiverValues'] as List).cast<String>(),
    );
  }
}


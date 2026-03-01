// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentClosingSettingClosingResponseMessageGroupMessagePlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentClosingSettingClosingResponseMessageGroupMessagePlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentClosingSettingClosingResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsIntentClosingSettingClosingResponseMessageGroupMessagePlainTextMessage.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingClosingResponseMessageGroupMessagePlainTextMessage(
      value: map['value'] as String,
    );
  }
}


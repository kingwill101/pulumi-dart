// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessagePlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessagePlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessagePlainTextMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessagePlainTextMessage(
      value: map['value'] as String,
    );
  }
}

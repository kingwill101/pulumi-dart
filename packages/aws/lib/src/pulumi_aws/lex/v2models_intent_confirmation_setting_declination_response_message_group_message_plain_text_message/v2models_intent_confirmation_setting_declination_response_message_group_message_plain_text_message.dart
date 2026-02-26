// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessagePlainTextMessage {
  /// Message to send to the user.
  final String value;

  V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessagePlainTextMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessagePlainTextMessage(
      value: map['value'] as String,
    );
  }
}

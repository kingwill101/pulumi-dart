// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessagePlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessagePlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessagePlainTextMessage.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessagePlainTextMessage(
      value: map['value'] as String,
    );
  }
}

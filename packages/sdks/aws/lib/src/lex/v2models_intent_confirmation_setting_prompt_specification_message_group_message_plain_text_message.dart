// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessagePlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessagePlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessagePlainTextMessage.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessagePlainTextMessage(
      value: map['value'] as String,
    );
  }
}


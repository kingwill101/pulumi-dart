// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessagePlainTextMessage {
  /// Message to send to the user.
  final String value;

  V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessagePlainTextMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessagePlainTextMessage(
      value: map['value'] as String,
    );
  }
}

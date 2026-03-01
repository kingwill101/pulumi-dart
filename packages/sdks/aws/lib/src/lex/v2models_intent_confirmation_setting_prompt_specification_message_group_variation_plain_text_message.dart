// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationPlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationPlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationPlainTextMessage.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationPlainTextMessage(
      value: map['value'] as String,
    );
  }
}


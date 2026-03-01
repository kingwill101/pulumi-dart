// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageSsmlMessage].
  /// [value] SSML text that defines the prompt.
  V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageSsmlMessage.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupMessageSsmlMessage(
      value: map['value'] as String,
    );
  }
}

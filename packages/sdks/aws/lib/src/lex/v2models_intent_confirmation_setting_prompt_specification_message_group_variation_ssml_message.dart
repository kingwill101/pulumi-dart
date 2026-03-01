// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationSsmlMessage].
  /// [value] SSML text that defines the prompt.
  V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationSsmlMessage.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingPromptSpecificationMessageGroupVariationSsmlMessage(
      value: map['value'] as String,
    );
  }
}


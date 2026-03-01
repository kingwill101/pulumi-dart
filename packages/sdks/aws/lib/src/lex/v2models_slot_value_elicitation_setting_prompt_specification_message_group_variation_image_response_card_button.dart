// ignore_for_file: unused_element, unnecessary_cast


class V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton {
  final String text;
  final String value;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton].
  /// [text] Required.
  /// [value] Required.
  V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'value': value,
    };
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton(
      text: map['text'] as String,
      value: map['value'] as String,
    );
  }
}


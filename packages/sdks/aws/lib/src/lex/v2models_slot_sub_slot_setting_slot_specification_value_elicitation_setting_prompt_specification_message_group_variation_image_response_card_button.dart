// ignore_for_file: unused_element, unnecessary_cast


class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton {
  final String text;
  final String value;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton].
  /// [text] Required.
  /// [value] Required.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'value': value,
    };
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationImageResponseCardButton(
      text: map['text'] as String,
      value: map['value'] as String,
    );
  }
}


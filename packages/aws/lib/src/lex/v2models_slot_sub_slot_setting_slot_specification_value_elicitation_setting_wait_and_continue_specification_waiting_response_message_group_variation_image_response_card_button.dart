// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCardButton {
  final String text;
  final String value;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCardButton].
  /// [text] Required.
  /// [value] Required.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCardButton({
    required this.text,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCardButton.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationImageResponseCardButton(
      text: map['text'] as String,
      value: map['value'] as String,
    );
  }
}

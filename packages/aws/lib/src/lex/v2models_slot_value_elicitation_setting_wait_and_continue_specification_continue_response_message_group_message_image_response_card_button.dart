// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCardButton {
  final String text;
  final String value;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCardButton].
  /// [text] Required.
  /// [value] Required.
  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'text': text, 'value': value};
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCardButton.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageImageResponseCardButton(
      text: map['text'] as String,
      value: map['value'] as String,
    );
  }
}

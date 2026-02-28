// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationPlainTextMessage {
  final String value;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationPlainTextMessage].
  /// [value] Required.
  V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationPlainTextMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationPlainTextMessage(
      value: map['value'] as String,
    );
  }
}

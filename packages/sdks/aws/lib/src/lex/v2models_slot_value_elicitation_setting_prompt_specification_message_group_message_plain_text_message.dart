// ignore_for_file: unused_element, unnecessary_cast


class V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessage {
  final String value;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessage].
  /// [value] Required.
  V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessage.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessagePlainTextMessage(
      value: map['value'] as String,
    );
  }
}


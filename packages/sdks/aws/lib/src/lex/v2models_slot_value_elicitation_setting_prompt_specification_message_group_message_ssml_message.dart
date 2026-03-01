// ignore_for_file: unused_element, unnecessary_cast


class V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageSsmlMessage {
  final String value;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageSsmlMessage].
  /// [value] Required.
  V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageSsmlMessage.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageSsmlMessage(
      value: map['value'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageCustomPayload {
  final String value;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageCustomPayload].
  /// [value] Required.
  V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupMessageCustomPayload(
      value: map['value'] as String,
    );
  }
}

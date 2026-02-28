// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload {
  final String value;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload].
  /// [value] Required.
  V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload(
      value: map['value'] as String,
    );
  }
}

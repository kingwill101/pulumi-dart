// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload {
  final String value;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload].
  /// [value] Required.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationMessageGroupVariationCustomPayload(
      value: map['value'] as String,
    );
  }
}

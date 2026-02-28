// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationCustomPayload {
  final String value;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationCustomPayload].
  /// [value] Required.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationCustomPayload(
      value: map['value'] as String,
    );
  }
}

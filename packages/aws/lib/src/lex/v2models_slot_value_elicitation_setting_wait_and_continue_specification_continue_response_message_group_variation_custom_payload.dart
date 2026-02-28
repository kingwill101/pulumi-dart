// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationCustomPayload {
  final String value;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationCustomPayload].
  /// [value] Required.
  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupVariationCustomPayload(
      value: map['value'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationCustomPayload {
  final String value;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationCustomPayload].
  /// [value] Required.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationCustomPayload(
      value: map['value'] as String,
    );
  }
}

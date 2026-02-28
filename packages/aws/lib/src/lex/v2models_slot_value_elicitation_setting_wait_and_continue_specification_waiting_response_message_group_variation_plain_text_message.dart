// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationPlainTextMessage {
  final String value;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationPlainTextMessage].
  /// [value] Required.
  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationPlainTextMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupVariationPlainTextMessage(
      value: map['value'] as String,
    );
  }
}

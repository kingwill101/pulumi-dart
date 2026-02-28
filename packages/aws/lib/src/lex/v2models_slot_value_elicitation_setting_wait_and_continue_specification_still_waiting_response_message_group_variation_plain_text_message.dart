// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationPlainTextMessage {
  final String value;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationPlainTextMessage].
  /// [value] Required.
  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationPlainTextMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupVariationPlainTextMessage(
      value: map['value'] as String,
    );
  }
}

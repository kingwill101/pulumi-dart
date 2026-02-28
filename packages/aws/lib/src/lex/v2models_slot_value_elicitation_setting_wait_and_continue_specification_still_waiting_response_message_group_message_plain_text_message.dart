// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessagePlainTextMessage {
  final String value;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessagePlainTextMessage].
  /// [value] Required.
  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessagePlainTextMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessagePlainTextMessage(
      value: map['value'] as String,
    );
  }
}

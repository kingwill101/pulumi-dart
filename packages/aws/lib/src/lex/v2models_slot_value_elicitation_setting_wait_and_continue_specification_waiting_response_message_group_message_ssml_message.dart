// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageSsmlMessage {
  final String value;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageSsmlMessage].
  /// [value] Required.
  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageSsmlMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageSsmlMessage(
      value: map['value'] as String,
    );
  }
}

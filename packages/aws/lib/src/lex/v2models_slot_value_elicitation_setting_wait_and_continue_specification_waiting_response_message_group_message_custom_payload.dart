// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageCustomPayload {
  final String value;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageCustomPayload].
  /// [value] Required.
  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationWaitingResponseMessageGroupMessageCustomPayload(
      value: map['value'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageCustomPayload {
  final String value;

  /// Creates a new [V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageCustomPayload].
  /// [value] Required.
  V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageCustomPayload(
      value: map['value'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageCustomPayload {
  final String value;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageCustomPayload].
  /// [value] Required.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageCustomPayload(
      value: map['value'] as String,
    );
  }
}

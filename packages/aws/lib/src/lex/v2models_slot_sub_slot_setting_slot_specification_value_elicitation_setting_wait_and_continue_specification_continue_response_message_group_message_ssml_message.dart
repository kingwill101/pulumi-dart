// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageSsmlMessage {
  final String value;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageSsmlMessage].
  /// [value] Required.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageSsmlMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationContinueResponseMessageGroupMessageSsmlMessage(
      value: map['value'] as String,
    );
  }
}

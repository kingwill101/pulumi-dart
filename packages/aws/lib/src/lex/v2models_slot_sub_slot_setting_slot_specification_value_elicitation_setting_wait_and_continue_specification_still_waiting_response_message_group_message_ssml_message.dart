// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageSsmlMessage {
  final String value;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageSsmlMessage].
  /// [value] Required.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageSsmlMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingWaitAndContinueSpecificationStillWaitingResponseMessageGroupMessageSsmlMessage(
      value: map['value'] as String,
    );
  }
}

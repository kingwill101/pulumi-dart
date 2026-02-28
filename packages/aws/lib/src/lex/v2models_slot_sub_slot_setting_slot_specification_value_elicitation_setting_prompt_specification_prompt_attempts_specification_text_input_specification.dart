// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification {
  final int startTimeoutMs;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification].
  /// [startTimeoutMs] Required.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification({
    required this.startTimeoutMs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['startTimeoutMs'] = startTimeoutMs;
    return map;
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification(
      startTimeoutMs: map['startTimeoutMs'] as int,
    );
  }
}

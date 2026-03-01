// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification {
  final int startTimeoutMs;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification].
  /// [startTimeoutMs] Required.
  V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification({
    required this.startTimeoutMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'startTimeoutMs': startTimeoutMs};
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification(
      startTimeoutMs: map['startTimeoutMs'] as int,
    );
  }
}

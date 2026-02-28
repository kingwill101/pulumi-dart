// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification {
  final int endTimeoutMs;
  final int maxLengthMs;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification].
  /// [endTimeoutMs] Required.
  /// [maxLengthMs] Required.
  V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification({
    required this.endTimeoutMs,
    required this.maxLengthMs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTimeoutMs'] = endTimeoutMs;
    map['maxLengthMs'] = maxLengthMs;
    return map;
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification(
      endTimeoutMs: map['endTimeoutMs'] as int,
      maxLengthMs: map['maxLengthMs'] as int,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification {
  final int endTimeoutMs;
  final int maxLengthMs;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification].
  /// [endTimeoutMs] Required.
  /// [maxLengthMs] Required.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification({
    required this.endTimeoutMs,
    required this.maxLengthMs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTimeoutMs'] = endTimeoutMs;
    map['maxLengthMs'] = maxLengthMs;
    return map;
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification(
      endTimeoutMs: map['endTimeoutMs'] as int,
      maxLengthMs: map['maxLengthMs'] as int,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification {
  final String deletionCharacter;
  final String endCharacter;
  final int endTimeoutMs;
  final int maxLength;

  V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification({
    required this.deletionCharacter,
    required this.endCharacter,
    required this.endTimeoutMs,
    required this.maxLength,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deletionCharacter'] = deletionCharacter;
    map['endCharacter'] = endCharacter;
    map['endTimeoutMs'] = endTimeoutMs;
    map['maxLength'] = maxLength;
    return map;
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification(
      deletionCharacter: map['deletionCharacter'] as String,
      endCharacter: map['endCharacter'] as String,
      endTimeoutMs: map['endTimeoutMs'] as int,
      maxLength: map['maxLength'] as int,
    );
  }
}

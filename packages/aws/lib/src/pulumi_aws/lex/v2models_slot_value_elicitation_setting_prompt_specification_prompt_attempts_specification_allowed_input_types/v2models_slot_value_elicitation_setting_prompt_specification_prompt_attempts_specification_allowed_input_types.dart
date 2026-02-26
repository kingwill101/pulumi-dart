// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes {
  final bool allowAudioInput;
  final bool allowDtmfInput;

  V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes({
    required this.allowAudioInput,
    required this.allowDtmfInput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowAudioInput'] = allowAudioInput;
    map['allowDtmfInput'] = allowDtmfInput;
    return map;
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes(
      allowAudioInput: map['allowAudioInput'] as bool,
      allowDtmfInput: map['allowDtmfInput'] as bool,
    );
  }
}

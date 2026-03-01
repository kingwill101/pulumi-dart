// ignore_for_file: unused_element, unnecessary_cast


class V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes {
  final bool allowAudioInput;
  final bool allowDtmfInput;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes].
  /// [allowAudioInput] Required.
  /// [allowDtmfInput] Required.
  V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes({
    required this.allowAudioInput,
    required this.allowDtmfInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAudioInput': allowAudioInput,
      'allowDtmfInput': allowDtmfInput,
    };
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes(
      allowAudioInput: map['allowAudioInput'] as bool,
      allowDtmfInput: map['allowDtmfInput'] as bool,
    );
  }
}


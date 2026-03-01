// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes {
  final bool allowAudioInput;
  final bool allowDtmfInput;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes].
  /// [allowAudioInput] Required.
  /// [allowDtmfInput] Required.
  V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes({
    required this.allowAudioInput,
    required this.allowDtmfInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAudioInput': allowAudioInput,
      'allowDtmfInput': allowDtmfInput,
    };
  }

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes(
      allowAudioInput: map['allowAudioInput'] as bool,
      allowDtmfInput: map['allowDtmfInput'] as bool,
    );
  }
}

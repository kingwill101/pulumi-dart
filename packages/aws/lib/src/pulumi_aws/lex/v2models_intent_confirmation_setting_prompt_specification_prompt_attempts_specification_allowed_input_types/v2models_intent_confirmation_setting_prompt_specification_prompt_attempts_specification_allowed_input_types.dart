// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes {
  /// Whether audio input is allowed.
  final bool allowAudioInput;

  /// Whether DTMF input is allowed.
  final bool allowDtmfInput;

  V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes({
    required this.allowAudioInput,
    required this.allowDtmfInput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowAudioInput'] = allowAudioInput;
    map['allowDtmfInput'] = allowDtmfInput;
    return map;
  }

  factory V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes(
      allowAudioInput: map['allowAudioInput'] as bool,
      allowDtmfInput: map['allowDtmfInput'] as bool,
    );
  }
}

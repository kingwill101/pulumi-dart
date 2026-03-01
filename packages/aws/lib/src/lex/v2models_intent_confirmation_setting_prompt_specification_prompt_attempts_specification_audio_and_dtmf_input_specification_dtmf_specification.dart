// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification {
  /// DTMF character that clears the accumulated DTMF digits and immediately ends the input.
  final String deletionCharacter;

  /// DTMF character that immediately ends input. If the user does not press this character, the input ends after the end timeout.
  final String endCharacter;

  /// How long the bot should wait after the last DTMF character input before assuming that the input has concluded.
  final int endTimeoutMs;

  /// Maximum number of DTMF digits allowed in an utterance.
  final int maxLength;

  /// Creates a new [V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification].
  /// [deletionCharacter] DTMF character that clears the accumulated DTMF digits and immediately ends the input.
  /// [endCharacter] DTMF character that immediately ends input. If the user does not press this character, the input ends after the end timeout.
  /// [endTimeoutMs] How long the bot should wait after the last DTMF character input before assuming that the input has concluded.
  /// [maxLength] Maximum number of DTMF digits allowed in an utterance.
  V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification({
    required this.deletionCharacter,
    required this.endCharacter,
    required this.endTimeoutMs,
    required this.maxLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionCharacter': deletionCharacter,
      'endCharacter': endCharacter,
      'endTimeoutMs': endTimeoutMs,
      'maxLength': maxLength,
    };
  }

  factory V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification(
      deletionCharacter: map['deletionCharacter'] as String,
      endCharacter: map['endCharacter'] as String,
      endTimeoutMs: map['endTimeoutMs'] as int,
      maxLength: map['maxLength'] as int,
    );
  }
}

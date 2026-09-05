// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification {
  /// DTMF character that clears the accumulated DTMF digits and immediately ends the input.
  final pulumi.Input<String> deletionCharacter;
  /// DTMF character that immediately ends input. If the user does not press this character, the input ends after the end timeout.
  final pulumi.Input<String> endCharacter;
  /// How long the bot should wait after the last DTMF character input before assuming that the input has concluded.
  final pulumi.Input<int> endTimeoutMs;
  /// Maximum number of DTMF digits allowed in an utterance.
  final pulumi.Input<int> maxLength;

  /// Creates a new [V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification].
  /// [deletionCharacter] DTMF character that clears the accumulated DTMF digits and immediately ends the input.
  /// [endCharacter] DTMF character that immediately ends input. If the user does not press this character, the input ends after the end timeout.
  /// [endTimeoutMs] How long the bot should wait after the last DTMF character input before assuming that the input has concluded.
  /// [maxLength] Maximum number of DTMF digits allowed in an utterance.
  const V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification({
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

  factory V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification(
      deletionCharacter: pulumi.Input.fromValue(map['deletionCharacter'] as String),
      endCharacter: pulumi.Input.fromValue(map['endCharacter'] as String),
      endTimeoutMs: pulumi.Input.fromValue((map['endTimeoutMs'] as num).toInt()),
      maxLength: pulumi.Input.fromValue((map['maxLength'] as num).toInt()),
    );
  }
}

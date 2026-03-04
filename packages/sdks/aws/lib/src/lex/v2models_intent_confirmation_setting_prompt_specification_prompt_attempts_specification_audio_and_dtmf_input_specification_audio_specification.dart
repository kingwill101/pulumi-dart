// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification {
  /// Time for which a bot waits after the customer stops speaking to assume the utterance is finished.
  final pulumi.Input<int> endTimeoutMs;

  /// Time for how long Amazon Lex waits before speech input is truncated and the speech is returned to application.
  final pulumi.Input<int> maxLengthMs;

  /// Creates a new [V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification].
  /// [endTimeoutMs] Time for which a bot waits after the customer stops speaking to assume the utterance is finished.
  /// [maxLengthMs] Time for how long Amazon Lex waits before speech input is truncated and the speech is returned to application.
  V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification({
    required this.endTimeoutMs,
    required this.maxLengthMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTimeoutMs': endTimeoutMs,
      'maxLengthMs': maxLengthMs,
    };
  }

  factory V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationAudioSpecification(
      endTimeoutMs: pulumi.Input.fromValue(map['endTimeoutMs'] as int),
      maxLengthMs: pulumi.Input.fromValue(map['maxLengthMs'] as int),
    );
  }
}

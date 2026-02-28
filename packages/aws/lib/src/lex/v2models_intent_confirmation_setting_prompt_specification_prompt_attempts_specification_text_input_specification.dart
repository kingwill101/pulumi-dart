// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification {
  /// Time for which a bot waits before re-prompting a customer for text input.
  final int startTimeoutMs;

  /// Creates a new [V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification].
  /// [startTimeoutMs] Time for which a bot waits before re-prompting a customer for text input.
  V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification({
    required this.startTimeoutMs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['startTimeoutMs'] = startTimeoutMs;
    return map;
  }

  factory V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification(
      startTimeoutMs: map['startTimeoutMs'] as int,
    );
  }
}

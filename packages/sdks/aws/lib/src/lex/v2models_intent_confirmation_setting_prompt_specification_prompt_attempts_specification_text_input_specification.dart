// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification {
  /// Time for which a bot waits before re-prompting a customer for text input.
  final pulumi.Input<int> startTimeoutMs;

  /// Creates a new [V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification].
  /// [startTimeoutMs] Time for which a bot waits before re-prompting a customer for text input.
  V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification({
    required this.startTimeoutMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'startTimeoutMs': startTimeoutMs};
  }

  factory V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification(
      startTimeoutMs: pulumi.Input.fromValue(map['startTimeoutMs'] as int),
    );
  }
}

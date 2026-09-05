// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification {
  final pulumi.Input<int> startTimeoutMs;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification].
  /// [startTimeoutMs] Required.
  const V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification({
    required this.startTimeoutMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startTimeoutMs': startTimeoutMs,
    };
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationTextInputSpecification(
      startTimeoutMs: pulumi.Input.fromValue((map['startTimeoutMs'] as num).toInt()),
    );
  }
}

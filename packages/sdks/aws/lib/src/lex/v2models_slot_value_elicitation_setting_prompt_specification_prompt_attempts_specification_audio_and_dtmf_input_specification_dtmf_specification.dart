// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification {
  final pulumi.Input<String> deletionCharacter;
  final pulumi.Input<String> endCharacter;
  final pulumi.Input<int> endTimeoutMs;
  final pulumi.Input<int> maxLength;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification].
  /// [deletionCharacter] Required.
  /// [endCharacter] Required.
  /// [endTimeoutMs] Required.
  /// [maxLength] Required.
  const V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification({
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

  factory V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification(
      deletionCharacter: pulumi.Input.fromValue(map['deletionCharacter'] as String),
      endCharacter: pulumi.Input.fromValue(map['endCharacter'] as String),
      endTimeoutMs: pulumi.Input.fromValue(map['endTimeoutMs'] as int),
      maxLength: pulumi.Input.fromValue(map['maxLength'] as int),
    );
  }
}

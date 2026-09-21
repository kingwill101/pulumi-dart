// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification {
  final pulumi.Input<String> deletionCharacter;
  final pulumi.Input<String> endCharacter;
  final pulumi.Input<int> endTimeoutMs;
  final pulumi.Input<int> maxLength;

  /// Creates a new [V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification].
  /// [deletionCharacter] Required.
  /// [endCharacter] Required.
  /// [endTimeoutMs] Required.
  /// [maxLength] Required.
  const V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification({
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

  factory V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSettingSlotSpecificationValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAudioAndDtmfInputSpecificationDtmfSpecification(
      deletionCharacter: pulumi.Input.fromValue(map['deletionCharacter'] as String),
      endCharacter: pulumi.Input.fromValue(map['endCharacter'] as String),
      endTimeoutMs: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['endTimeoutMs'])),
      maxLength: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxLength'])),
    );
  }
}

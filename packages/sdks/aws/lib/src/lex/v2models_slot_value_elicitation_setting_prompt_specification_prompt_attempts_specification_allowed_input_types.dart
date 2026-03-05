// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes {
  final pulumi.Input<bool> allowAudioInput;
  final pulumi.Input<bool> allowDtmfInput;

  /// Creates a new [V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes].
  /// [allowAudioInput] Required.
  /// [allowDtmfInput] Required.
  V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes({
    required this.allowAudioInput,
    required this.allowDtmfInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAudioInput': allowAudioInput,
      'allowDtmfInput': allowDtmfInput,
    };
  }

  factory V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingPromptSpecificationPromptAttemptsSpecificationAllowedInputTypes(
      allowAudioInput: pulumi.Input.fromValue(map['allowAudioInput'] as bool),
      allowDtmfInput: pulumi.Input.fromValue(map['allowDtmfInput'] as bool),
    );
  }
}


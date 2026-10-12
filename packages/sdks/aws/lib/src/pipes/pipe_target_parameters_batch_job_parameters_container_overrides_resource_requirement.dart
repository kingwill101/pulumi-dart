// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement {
  final pulumi.Input<String> type;
  final pulumi.Input<String> value;

  /// Creates a new [PipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement].
  /// [type] Required.
  /// [value] Required.
  const PipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory PipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersBatchJobParametersContainerOverridesResourceRequirement(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

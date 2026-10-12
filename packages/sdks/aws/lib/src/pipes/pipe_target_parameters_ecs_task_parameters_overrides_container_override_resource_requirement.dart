// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement {
  final pulumi.Input<String> type;
  final pulumi.Input<String> value;

  /// Creates a new [PipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement].
  /// [type] Required.
  /// [value] Required.
  const PipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory PipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersEcsTaskParametersOverridesContainerOverrideResourceRequirement(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

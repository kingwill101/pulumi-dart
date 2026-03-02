// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment {
  /// Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Value of parameter to start execution of a SageMaker AI Model Building Pipeline. Maximum length of 1024.
  final pulumi.Input<String>? value;

  /// Creates a new [PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment].
  /// [name] Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [value] Value of parameter to start execution of a SageMaker AI Model Building Pipeline. Maximum length of 1024.
  PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment(
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      value: map['value'] == null ? null : ((map['value'] as String).input()).input(),
    );
  }
}


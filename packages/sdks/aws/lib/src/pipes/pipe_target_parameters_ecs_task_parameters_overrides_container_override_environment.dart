// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment {
  /// Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? value;

  /// Creates a new [PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment].
  /// [name] Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  /// [value] Optional.
  const PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironment({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

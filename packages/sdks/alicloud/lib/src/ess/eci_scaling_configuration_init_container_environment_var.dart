// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EciScalingConfigurationInitContainerEnvironmentVar {
  final pulumi.Input<String>? fieldRefFieldPath;
  final pulumi.Input<String>? key;
  final pulumi.Input<String>? value;

  /// Creates a new [EciScalingConfigurationInitContainerEnvironmentVar].
  /// [fieldRefFieldPath] Optional.
  /// [key] Optional.
  /// [value] Optional.
  const EciScalingConfigurationInitContainerEnvironmentVar({
    this.fieldRefFieldPath,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldRefFieldPath': ?fieldRefFieldPath,
      'key': ?key,
      'value': ?value,
    };
  }

  factory EciScalingConfigurationInitContainerEnvironmentVar.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationInitContainerEnvironmentVar(
      fieldRefFieldPath: (() { final guardedValue = map['fieldRefFieldPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


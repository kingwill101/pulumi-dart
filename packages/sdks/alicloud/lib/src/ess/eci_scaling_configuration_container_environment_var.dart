// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EciScalingConfigurationContainerEnvironmentVar {
  final pulumi.Input<String>? fieldRefFieldPath;
  final pulumi.Input<String>? key;
  final pulumi.Input<String>? value;

  /// Creates a new [EciScalingConfigurationContainerEnvironmentVar].
  /// [fieldRefFieldPath] Optional.
  /// [key] Optional.
  /// [value] Optional.
  EciScalingConfigurationContainerEnvironmentVar({
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

  factory EciScalingConfigurationContainerEnvironmentVar.fromMap(
    Map<String, dynamic> map,
  ) {
    return EciScalingConfigurationContainerEnvironmentVar(
      fieldRefFieldPath: (() {
        final guardedValue = map['fieldRefFieldPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

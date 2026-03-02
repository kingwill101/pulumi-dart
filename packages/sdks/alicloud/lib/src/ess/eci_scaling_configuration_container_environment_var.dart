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

  factory EciScalingConfigurationContainerEnvironmentVar.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationContainerEnvironmentVar(
      fieldRefFieldPath: map['fieldRefFieldPath'] == null ? null : (map['fieldRefFieldPath'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}


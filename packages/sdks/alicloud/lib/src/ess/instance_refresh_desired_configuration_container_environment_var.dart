// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceRefreshDesiredConfigurationContainerEnvironmentVar {
  /// This parameter is not available for use.
  final pulumi.Input<String>? fieldRefFieldPath;

  /// The name of the environment variable.
  final pulumi.Input<String>? key;

  /// The value of the environment variable.
  final pulumi.Input<String>? value;

  /// Creates a new [InstanceRefreshDesiredConfigurationContainerEnvironmentVar].
  /// [fieldRefFieldPath] This parameter is not available for use.
  /// [key] The name of the environment variable.
  /// [value] The value of the environment variable.
  InstanceRefreshDesiredConfigurationContainerEnvironmentVar({
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

  factory InstanceRefreshDesiredConfigurationContainerEnvironmentVar.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceRefreshDesiredConfigurationContainerEnvironmentVar(
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

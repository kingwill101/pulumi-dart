// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerGroupInitContainerEnvironmentVarFieldRef {
  final pulumi.Input<String>? fieldPath;

  /// Creates a new [ContainerGroupInitContainerEnvironmentVarFieldRef].
  /// [fieldPath] Optional.
  const ContainerGroupInitContainerEnvironmentVarFieldRef({
    this.fieldPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldPath': ?fieldPath,
    };
  }

  factory ContainerGroupInitContainerEnvironmentVarFieldRef.fromMap(Map<String, dynamic> map) {
    return ContainerGroupInitContainerEnvironmentVarFieldRef(
      fieldPath: (() { final guardedValue = map['fieldPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


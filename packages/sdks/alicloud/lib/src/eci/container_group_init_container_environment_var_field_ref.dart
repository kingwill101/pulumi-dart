// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerGroupInitContainerEnvironmentVarFieldRef {
  final pulumi.Input<String>? fieldPath;

  /// Creates a new [ContainerGroupInitContainerEnvironmentVarFieldRef].
  /// [fieldPath] Optional.
  ContainerGroupInitContainerEnvironmentVarFieldRef({
    this.fieldPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldPath': ?fieldPath,
    };
  }

  factory ContainerGroupInitContainerEnvironmentVarFieldRef.fromMap(Map<String, dynamic> map) {
    return ContainerGroupInitContainerEnvironmentVarFieldRef(
      fieldPath: map['fieldPath'] == null ? null : (map['fieldPath']! as String).input(),
    );
  }
}


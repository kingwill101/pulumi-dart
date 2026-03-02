// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerGroupContainerEnvironmentVarFieldRef {
  final pulumi.Input<String>? fieldPath;

  /// Creates a new [ContainerGroupContainerEnvironmentVarFieldRef].
  /// [fieldPath] Optional.
  ContainerGroupContainerEnvironmentVarFieldRef({
    this.fieldPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldPath': ?fieldPath,
    };
  }

  factory ContainerGroupContainerEnvironmentVarFieldRef.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainerEnvironmentVarFieldRef(
      fieldPath: map['fieldPath'] == null ? null : (map['fieldPath']! as String).input(),
    );
  }
}


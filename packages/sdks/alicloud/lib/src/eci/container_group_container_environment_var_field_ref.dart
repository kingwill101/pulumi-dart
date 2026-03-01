// ignore_for_file: unused_element, unnecessary_cast


class ContainerGroupContainerEnvironmentVarFieldRef {
  final String? fieldPath;

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
      fieldPath: map['fieldPath'] == null ? null : map['fieldPath'] as String,
    );
  }
}


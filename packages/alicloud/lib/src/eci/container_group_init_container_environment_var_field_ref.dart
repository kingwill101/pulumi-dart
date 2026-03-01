// ignore_for_file: unused_element, unnecessary_cast


class ContainerGroupInitContainerEnvironmentVarFieldRef {
  final String? fieldPath;

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
      fieldPath: map['fieldPath'] == null ? null : map['fieldPath'] as String,
    );
  }
}


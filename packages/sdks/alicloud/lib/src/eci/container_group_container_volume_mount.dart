// ignore_for_file: unused_element, unnecessary_cast


class ContainerGroupContainerVolumeMount {
  final String? mountPath;
  final String? name;
  final bool? readOnly;

  /// Creates a new [ContainerGroupContainerVolumeMount].
  /// [mountPath] Optional.
  /// [name] Optional.
  /// [readOnly] Optional.
  ContainerGroupContainerVolumeMount({
    this.mountPath,
    this.name,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': ?mountPath,
      'name': ?name,
      'readOnly': ?readOnly,
    };
  }

  factory ContainerGroupContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return ContainerGroupContainerVolumeMount(
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
    );
  }
}


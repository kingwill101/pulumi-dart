// ignore_for_file: unused_element, unnecessary_cast


class ContainerGroupInitContainerVolumeMount {
  final String? mountPath;
  final String? name;
  final bool? readOnly;

  /// Creates a new [ContainerGroupInitContainerVolumeMount].
  /// [mountPath] Optional.
  /// [name] Optional.
  /// [readOnly] Optional.
  ContainerGroupInitContainerVolumeMount({
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

  factory ContainerGroupInitContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return ContainerGroupInitContainerVolumeMount(
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
    );
  }
}


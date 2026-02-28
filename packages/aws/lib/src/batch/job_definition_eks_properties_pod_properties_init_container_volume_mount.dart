// ignore_for_file: unused_element, unnecessary_cast


class JobDefinitionEksPropertiesPodPropertiesInitContainerVolumeMount {
  final String mountPath;
  /// Name of the job definition.
  final String name;
  final bool? readOnly;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesInitContainerVolumeMount].
  /// [mountPath] Required.
  /// [name] Name of the job definition.
  /// [readOnly] Optional.
  JobDefinitionEksPropertiesPodPropertiesInitContainerVolumeMount({
    required this.mountPath,
    required this.name,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'name': name,
      'readOnly': ?readOnly,
    };
  }

  factory JobDefinitionEksPropertiesPodPropertiesInitContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesInitContainerVolumeMount(
      mountPath: map['mountPath'] as String,
      name: map['name'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class EciScalingConfigurationInitContainerVolumeMount {
  final String? mountPath;
  final String? mountPropagation;
  final String? name;
  final bool? readOnly;
  final String? subPath;

  /// Creates a new [EciScalingConfigurationInitContainerVolumeMount].
  /// [mountPath] Optional.
  /// [mountPropagation] Optional.
  /// [name] Optional.
  /// [readOnly] Optional.
  /// [subPath] Optional.
  EciScalingConfigurationInitContainerVolumeMount({
    this.mountPath,
    this.mountPropagation,
    this.name,
    this.readOnly,
    this.subPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': ?mountPath,
      'mountPropagation': ?mountPropagation,
      'name': ?name,
      'readOnly': ?readOnly,
      'subPath': ?subPath,
    };
  }

  factory EciScalingConfigurationInitContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationInitContainerVolumeMount(
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
      mountPropagation: map['mountPropagation'] == null ? null : map['mountPropagation'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      subPath: map['subPath'] == null ? null : map['subPath'] as String,
    );
  }
}


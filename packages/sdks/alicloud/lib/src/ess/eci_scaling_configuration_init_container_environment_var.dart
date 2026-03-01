// ignore_for_file: unused_element, unnecessary_cast


class EciScalingConfigurationInitContainerEnvironmentVar {
  final String? fieldRefFieldPath;
  final String? key;
  final String? value;

  /// Creates a new [EciScalingConfigurationInitContainerEnvironmentVar].
  /// [fieldRefFieldPath] Optional.
  /// [key] Optional.
  /// [value] Optional.
  EciScalingConfigurationInitContainerEnvironmentVar({
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

  factory EciScalingConfigurationInitContainerEnvironmentVar.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationInitContainerEnvironmentVar(
      fieldRefFieldPath: map['fieldRefFieldPath'] == null ? null : map['fieldRefFieldPath'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}


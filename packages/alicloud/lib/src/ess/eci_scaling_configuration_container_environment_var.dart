// ignore_for_file: unused_element, unnecessary_cast


class EciScalingConfigurationContainerEnvironmentVar {
  final String? fieldRefFieldPath;
  final String? key;
  final String? value;

  /// Creates a new [EciScalingConfigurationContainerEnvironmentVar].
  /// [fieldRefFieldPath] Optional.
  /// [key] Optional.
  /// [value] Optional.
  EciScalingConfigurationContainerEnvironmentVar({
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

  factory EciScalingConfigurationContainerEnvironmentVar.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationContainerEnvironmentVar(
      fieldRefFieldPath: map['fieldRefFieldPath'] == null ? null : map['fieldRefFieldPath'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}


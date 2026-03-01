// ignore_for_file: unused_element, unnecessary_cast

class JobDefinitionEksPropertiesPodPropertiesInitContainerEnv {
  /// Name of the job definition.
  final String name;

  /// Value of the environment variable.
  final String value;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesInitContainerEnv].
  /// [name] Name of the job definition.
  /// [value] Value of the environment variable.
  JobDefinitionEksPropertiesPodPropertiesInitContainerEnv({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory JobDefinitionEksPropertiesPodPropertiesInitContainerEnv.fromMap(
    Map<String, dynamic> map,
  ) {
    return JobDefinitionEksPropertiesPodPropertiesInitContainerEnv(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

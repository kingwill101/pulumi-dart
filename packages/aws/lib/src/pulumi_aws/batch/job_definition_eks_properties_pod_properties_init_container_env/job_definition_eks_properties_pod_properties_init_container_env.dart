// ignore_for_file: unused_element, unnecessary_cast

class JobDefinitionEksPropertiesPodPropertiesInitContainerEnv {
  /// Name of the job definition.
  final String name;

  /// Value of the environment variable.
  final String value;

  JobDefinitionEksPropertiesPodPropertiesInitContainerEnv({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory JobDefinitionEksPropertiesPodPropertiesInitContainerEnv.fromMap(
      Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesInitContainerEnv(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

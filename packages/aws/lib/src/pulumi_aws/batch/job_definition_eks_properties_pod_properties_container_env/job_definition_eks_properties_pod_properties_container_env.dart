// ignore_for_file: unused_element, unnecessary_cast

class JobDefinitionEksPropertiesPodPropertiesContainerEnv {
  /// Name of the job definition.
  final String name;

  /// Value of the environment variable.
  final String value;

  JobDefinitionEksPropertiesPodPropertiesContainerEnv({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory JobDefinitionEksPropertiesPodPropertiesContainerEnv.fromMap(
      Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesContainerEnv(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

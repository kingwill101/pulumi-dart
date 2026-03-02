// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobDefinitionEksPropertiesPodPropertiesContainerEnv {
  /// Name of the job definition.
  final pulumi.Input<String> name;
  /// Value of the environment variable.
  final pulumi.Input<String> value;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesContainerEnv].
  /// [name] Name of the job definition.
  /// [value] Value of the environment variable.
  JobDefinitionEksPropertiesPodPropertiesContainerEnv({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory JobDefinitionEksPropertiesPodPropertiesContainerEnv.fromMap(Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesContainerEnv(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class JobTemplateInitContainerEnv {
  /// The name of the environment variable.
  final String name;
  /// Name of the Container App secret from which to pull the environment variable value.
  final String? secretName;
  /// The value of the environment variable.
  final String? value;

  /// Creates a new [JobTemplateInitContainerEnv].
  /// [name] The name of the environment variable.
  /// [secretName] Name of the Container App secret from which to pull the environment variable value.
  /// [value] The value of the environment variable.
  JobTemplateInitContainerEnv({
    required this.name,
    this.secretName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'secretName': ?secretName,
      'value': ?value,
    };
  }

  factory JobTemplateInitContainerEnv.fromMap(Map<String, dynamic> map) {
    return JobTemplateInitContainerEnv(
      name: map['name'] as String,
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}


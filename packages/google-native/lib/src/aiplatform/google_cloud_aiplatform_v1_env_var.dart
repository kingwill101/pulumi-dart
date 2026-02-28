// ignore_for_file: unused_element, unnecessary_cast

/// Represents an environment variable present in a Container or Python Module.
class GoogleCloudAiplatformV1EnvVar {
  /// Name of the environment variable. Must be a valid C identifier.
  final String name;

  /// Variables that reference a $(VAR_NAME) are expanded using the previous defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not.
  final String value;

  /// Creates a new [GoogleCloudAiplatformV1EnvVar].
  /// [name] Name of the environment variable. Must be a valid C identifier.
  /// [value] Variables that reference a $(VAR_NAME) are expanded using the previous defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not.
  GoogleCloudAiplatformV1EnvVar({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GoogleCloudAiplatformV1EnvVar.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1EnvVar(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

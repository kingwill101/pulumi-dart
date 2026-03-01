// ignore_for_file: unused_element, unnecessary_cast

class RuntimeTemplateSoftwareConfigEnv {
  /// Name of the environment variable. Must be a valid C identifier.
  final String? name;

  /// Variables that reference a $(VAR_NAME) are expanded using the previous defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not.
  final String? value;

  /// Creates a new [RuntimeTemplateSoftwareConfigEnv].
  /// [name] Name of the environment variable. Must be a valid C identifier.
  /// [value] Variables that reference a $(VAR_NAME) are expanded using the previous defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not.
  RuntimeTemplateSoftwareConfigEnv({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory RuntimeTemplateSoftwareConfigEnv.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateSoftwareConfigEnv(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

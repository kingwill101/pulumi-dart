// ignore_for_file: unused_element, unnecessary_cast


class ConfigurationTemplateSetting {
  /// A unique name for this Template.
  final String name;
  final String namespace;
  final String? resource;
  final String value;

  /// Creates a new [ConfigurationTemplateSetting].
  /// [name] A unique name for this Template.
  /// [namespace] Required.
  /// [resource] Optional.
  /// [value] Required.
  ConfigurationTemplateSetting({
    required this.name,
    required this.namespace,
    this.resource,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespace': namespace,
      'resource': ?resource,
      'value': value,
    };
  }

  factory ConfigurationTemplateSetting.fromMap(Map<String, dynamic> map) {
    return ConfigurationTemplateSetting(
      name: map['name'] as String,
      namespace: map['namespace'] as String,
      resource: map['resource'] == null ? null : map['resource'] as String,
      value: map['value'] as String,
    );
  }
}


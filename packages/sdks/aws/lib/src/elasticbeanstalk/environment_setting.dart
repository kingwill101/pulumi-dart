// ignore_for_file: unused_element, unnecessary_cast


class EnvironmentSetting {
  /// A unique name for this Environment. This name is used
  /// in the application URL
  final String name;
  final String namespace;
  final String? resource;
  final String value;

  /// Creates a new [EnvironmentSetting].
  /// [name] A unique name for this Environment. This name is used
  /// [namespace] Required.
  /// [resource] Optional.
  /// [value] Required.
  EnvironmentSetting({
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

  factory EnvironmentSetting.fromMap(Map<String, dynamic> map) {
    return EnvironmentSetting(
      name: map['name'] as String,
      namespace: map['namespace'] as String,
      resource: map['resource'] == null ? null : map['resource'] as String,
      value: map['value'] as String,
    );
  }
}


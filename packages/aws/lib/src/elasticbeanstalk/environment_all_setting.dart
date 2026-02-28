// ignore_for_file: unused_element, unnecessary_cast


class EnvironmentAllSetting {
  /// A unique name for this Environment. This name is used
  /// in the application URL
  final String name;
  final String namespace;
  final String? resource;
  final String value;

  /// Creates a new [EnvironmentAllSetting].
  /// [name] A unique name for this Environment. This name is used
  /// [namespace] Required.
  /// [resource] Optional.
  /// [value] Required.
  EnvironmentAllSetting({
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

  factory EnvironmentAllSetting.fromMap(Map<String, dynamic> map) {
    return EnvironmentAllSetting(
      name: map['name'] as String,
      namespace: map['namespace'] as String,
      resource: map['resource'] == null ? null : map['resource'] as String,
      value: map['value'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentProvisionedResource {
  /// The name of the environment.
  final String name;
  final String provider;
  final String type;

  /// The value of an environment profile parameter.
  final String value;

  /// Creates a new [EnvironmentProvisionedResource].
  /// [name] The name of the environment.
  /// [provider] Required.
  /// [type] Required.
  /// [value] The value of an environment profile parameter.
  EnvironmentProvisionedResource({
    required this.name,
    required this.provider,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'provider': provider,
      'type': type,
      'value': value,
    };
  }

  factory EnvironmentProvisionedResource.fromMap(Map<String, dynamic> map) {
    return EnvironmentProvisionedResource(
      name: map['name'] as String,
      provider: map['provider'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

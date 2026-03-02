// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentProvisionedResource {
  /// The name of the environment.
  final pulumi.Input<String> name;
  final pulumi.Input<String> provider;
  final pulumi.Input<String> type;
  /// The value of an environment profile parameter.
  final pulumi.Input<String> value;

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
      name: (map['name'] as String).input(),
      provider: (map['provider'] as String).input(),
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}


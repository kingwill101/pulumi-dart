// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentAllSetting {
  /// A unique name for this Environment. This name is used
  /// in the application URL
  final pulumi.Input<String> name;
  final pulumi.Input<String> namespace;
  final pulumi.Input<String>? resource;
  final pulumi.Input<String> value;

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
      name: (map['name'] as String).input(),
      namespace: (map['namespace'] as String).input(),
      resource: map['resource'] == null ? null : ((map['resource'] as String).input()).input(),
      value: (map['value'] as String).input(),
    );
  }
}


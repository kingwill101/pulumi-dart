// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentAllSetting {
  /// Name of the configuration option
  final pulumi.Input<String> name;
  /// Unique namespace identifying the option's associated AWS resource
  final pulumi.Input<String> namespace;
  /// resource name for [scheduled action](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options-general.html#command-options-general-autoscalingscheduledaction)
  final pulumi.Input<String>? resource;
  /// Value for the configuration option
  final pulumi.Input<String> value;

  /// Creates a new [EnvironmentAllSetting].
  /// [name] Name of the configuration option
  /// [namespace] Unique namespace identifying the option's associated AWS resource
  /// [resource] resource name for [scheduled action](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options-general.html#command-options-general-autoscalingscheduledaction)
  /// [value] Value for the configuration option
  const EnvironmentAllSetting({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
